//%attributes = {"invisible":true}
  // AJUI_CPBdrawSVG ( $instance_obj ) 
  //
  // $instance_obj : (object) instance of an CPB
  //
  // This method will generata the SVG and after that will update the form picture object

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 23.05.19, 09:22:05
	  // ----------------------------------------------------
	  // Method: AJUI_CPBdrawSVG
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_OBJECT:C1216($1;$instance_obj)
C_LONGINT:C283($circRadius_l;$margin_l)
C_LONGINT:C283($widthSVG_l;$heightSVG_l;$x_l;$y_l)
C_LONGINT:C283($circBarWidth_l;$circBgBarRadius_l)
C_TEXT:C284($circBarColor_t;$circBarlinecap_t;$barRef_t;$bgBarRef_t;$textFontColor_t)
C_TEXT:C284($circBgBarColor_t;$circBgBarBorderColor_t;$pictObjectName_t)
C_LONGINT:C283($circBgBarIntRadius_l;$circBgBarWidth_l)
C_BOOLEAN:C305($percentDisplay_b;$autoSize_b)
C_TEXT:C284($title_t;$subtitle_t;$textFontstyle_t)
C_LONGINT:C283($textFontSize_l;$textAreaWidth_l;$textAreaHeight_l;$textX_l;$textY_l)
C_REAL:C285($percent;$startX_r;$startY_r)
C_PICTURE:C286($pict)

$instance_obj:=$1

$margin_l:=20

$autoSize_b:=$instance_obj.cpb.autoRadiusSize
$pictObjectName_t:=$instance_obj.cpb.bar.pictureFormObjName

If ($autoSize_b)
	
	OBJECT GET COORDINATES:C663(*;$pictObjectName_t;$left_l;$top_l;$right_l;$bottom_l)
	
	$widthSVG_l:=$right_l-$left_l
	$heightSVG_l:=$bottom_l-$top_l
	
	  //we keep the smaller value to draw the rectangle
	If ($heightSVG_l>$widthSVG_l)
		$heightSVG_l:=$widthSVG_l
	Else 
		$widthSVG_l:=$heightSVG_l
	End if 
	
	$circRadius_l:=Round:C94(($widthSVG_l/2)-$margin_l;0)
	
Else 
	$circRadius_l:=$instance_obj.cpb.radius
	
	$widthSVG_l:=($circRadius_l+$margin_l)*2
	$heightSVG_l:=($circRadius_l+$margin_l)*2
	
End if 

$x_l:=$circRadius_l+$margin_l
$y_l:=$x_l

  //background circular progressbar
$circBgBarWidth_l:=$instance_obj.cpb.bgBar.width  // background circular progressbar
$circBgBarRadius_l:=$circRadius_l  // radius circular progressbar
$circBgBarBorderColor_t:=$instance_obj.cpb.bgBar.color  // color background circular progressbar
$circBgBarColor_t:=$instance_obj.cpb.bgBar.fillColor  // fill color background circular progressbar
$circBgBarIntRadius_l:=$circBgBarRadius_l-$circBgBarWidth_l  // radius circular progressbar

  //progressBar
$circBarWidth_l:=$instance_obj.cpb.bar.width
$circBarColor_t:=$instance_obj.cpb.bar.color
$circBarlinecap_t:=$instance_obj.cpb.bar.linecap


  // percent
$percent:=$instance_obj.cpb.percent.value.current
$startX_r:=0
$startY_r:=360/100*$percent
$percentDisplay_b:=$instance_obj.cpb.percent.display

If ($percentDisplay_b)
	  // text
	$textFontColor_t:=$instance_obj.cpb.percent.font.color
	$textFontSize_l:=$instance_obj.cpb.percent.font.size
	$pos:=Position:C15(":";$textFontColor_t)
	If ($pos>0)
		$opacity:=Num:C11(Substring:C12($textFontColor_t;$pos+1))
		$textFontColor_t:=Substring:C12($textFontColor_t;1;$pos-1)
	End if 
	
	$title_t:=$instance_obj.cpb.text.title
	$subtitle_t:=$instance_obj.cpb.text.subtitle
	
	$title_t:=Replace string:C233($title_t;"$value_l";String:C10(Round:C94($percent;0)))
	$subtitle_t:=Replace string:C233($subtitle_t;"$value_l";String:C10(Round:C94($percent;0)))
	
	$title_t:=Replace string:C233($title_t;"$value_r";String:C10($percent;"##0.0"))
	$subtitle_t:=Replace string:C233($subtitle_t;"$value_r";String:C10($percent;"##0.0"))
	
	
	
	
	$textValue_t:="<span style=\"font-size:"+String:C10($textFontSize_l)+"pt;color:"+$textFontColor_t+"\">"+$title_t+"</span><br/>"
	$textValue_t:=$textValue_t+"<span style=\"font-size:"+String:C10($textFontSize_l*0.6;"###0")+"pt;color:"+$textFontColor_t+"\">"+$subtitle_t+"</span>"
	
	
	
	$textAreaWidth_l:=$circBgBarintRadius_l*2
	$textAreaHeight_l:=$circBgBarintRadius_l*2
	$textX_l:=$x_l-($textAreaWidth_l/2)
	$textY_l:=$y_l-($textAreaHeight_l/2)
	$textFontName_t:=$instance_obj.cpb.percent.font.name
	$textFontstyle_t:=$instance_obj.cpb.percent.font.style
	$textRadiusInt_l:=$circBgBarRadius_l
	
End if 

  //draw SVG
$svgRef_t:=SVG_New ($widthSVG_l;$heightSVG_l)

C_OBJECT:C1216($circle)
C_TEXT:C284($bgBarRef_t)
$circle:=New object:C1471
  // background circular progressbar
$circle.parentSVGObject:=$svgRef_t
$circle.x:=$x_l
$circle.y:=$y_l
$circle.radius:=$circBgBarRadius_l
$circle.foregroundColor:=$circBgBarBorderColor_t
$circle.backgroundColor:=$circBgBarColor_t  //none
$circle.strokeWidth:=$circBgBarWidth_l
$bgBarRef_t:=AJUI_initSVGCircle ($circle)

  // background circular progressbar
C_OBJECT:C1216($arc)
C_TEXT:C284($barRef_t)
$arc:=New object:C1471
$arc.parentSVGObject:=$svgRef_t
$arc.x:=$x_l
$arc.y:=$y_l
$arc.radius:=$circBgBarRadius_l
$arc.start:=0
$arc.end:=$startY_r
$arc.foregroundColor:=$circBarColor_t
$arc.backgroundColor:=""  //none
$arc.strokeWidth:=$circBarWidth_l
$arc.strokeLinecap:=$circBarlinecap_t
If ($instance_obj.cpb.bar.isBarbershop)
	$arc.start:=360/100*$instance_obj.start
	$arc.end:=360/100*$instance_obj.end
	
	$barRef_t:=AJUI_initSVGArc ($arc)
Else 
	If ($percent<100)
		If ($percent>0)
			$barRef_t:=AJUI_initSVGArc ($arc)
		End if 
	Else 
		$barRef_t:=AJUI_initSVGCircle ($arc)
	End if 
End if 

If ($percentDisplay_b)
	$textRef_t:=SVG_New_textArea ($svgRef_t;$textValue_t;$textX_l;$textY_l;$textAreaWidth_l;$textAreaHeight_l;$textFontName_t;$circBgBarintRadius_l;Utl_fontStyle2Constant ($textFontstyle_t);Align center:K42:3)
	SVG_SET_OPACITY ($textRef_t;$opacity;$opacity)
End if 

If (False:C215)
	SVGTool_SHOW_IN_VIEWER ($svgRef_t)
End if 

SVG EXPORT TO PICTURE:C1017($svgRef_t;$pict)
SVG_CLEAR ($svgRef_t)

OBJECT Get pointer:C1124(Object named:K67:5;$pictObjectName_t)->:=$pict
AJUI_ResizePictObjAfterDraw ($pictObjectName_t;$pict)