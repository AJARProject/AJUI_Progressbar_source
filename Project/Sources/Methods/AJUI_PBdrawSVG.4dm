//%attributes = {"invisible":true}
  // AJUI_PBdrawSVG ( $instance_obj ) 
  //
  // $instance_obj : (object) instance of an PB
  //
  // This method will generata the SVG and after that will update the form picture object

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 23.05.19, 09:22:33
	  // ----------------------------------------------------
	  // Method: AJUI_PBdrawSVG
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_OBJECT:C1216($1;$instance_obj)
C_LONGINT:C283($barStart_l;$winTargetRef_l;$fontsize_l)
C_PICTURE:C286($pict)
C_BOOLEAN:C305($displayPercent_b;$barbershop_b)
C_REAL:C285($percent_r;$offset_r)
C_TEXT:C284($pictObjecteNamet_t;$title_t)
C_TEXT:C284($fontStyle_t;$fontName_t;$textPosition_t;$fontColor_t)


$instance_obj:=$1
$resultSVG_obj:=New object:C1471

$winTargetRef_l:=$instance_obj.msc.windowRef
$barbershop_b:=$instance_obj.bar.isBarbershop

$textPosition_t:=$instance_obj.text.position
$fontStyle_t:=$instance_obj.percent.font.style
$fontName_t:=$instance_obj.percent.font.name
$fontsize_l:=$instance_obj.percent.font.size
$fontColor_t:=$instance_obj.percent.font.color
$displayPercent_b:=$instance_obj.percent.display

$widthSVG_l:=$instance_obj.progressArea.width+10
$heightSVG_l:=$instance_obj.progressArea.height+10

$pbContainerX_l:=$instance_obj.svgArea.positionX
$pbContainerY_l:=$instance_obj.svgArea.positionY
$pbContainerWidth_l:=$instance_obj.progressArea.width
$pbContainerHeight_l:=$instance_obj.progressArea.height

If (Not:C34($textPosition_t="middle") & ($displayPercent_b))
	$heightSVG_l:=$heightSVG_l+($fontsize_l*1.25)
	If ($textPosition_t="top")
		$pbContainerY_l:=$pbContainerY_l+($fontsize_l*1.25)
	End if 
End if 



$pbContainerCornerRadius:=$instance_obj.progressArea.cornerRadius
$pbContainerBorderColor:=$instance_obj.progressArea.borderColor
$pbContainerBGColor:=$instance_obj.progressArea.backgroundColor
$pbContainerFGColor:=$instance_obj.bar.color
$windowBGColor:=$instance_obj.svgArea.windowBGColor
$pbContainerBorderSize:=$instance_obj.progressArea.borderSize
$percent_r:=$instance_obj.percent.value.current


$pictObjecteNamet_t:=$instance_obj.bar.pictureFormObjName


$offset_r:=$instance_obj.bar.offset
$barX_l:=$pbContainerX_l+$offset_r
$barY_l:=$pbContainerY_l+$offset_r
$barWidth_l:=$pbContainerWidth_l-(2*$offset_r)
$barHeight_l:=$pbContainerHeight_l-(2*$offset_r)
$barCornerRadius:=$pbContainerCornerRadius-($offset_r/2)
$barFGColor:=$pbContainerFGColor
$barBorderSize:=0
$barStart_l:=$instance_obj.start
$direction:=$instance_obj.bar.direction




  //draw SVG
$svgRef_t:=SVG_New ($widthSVG_l;$heightSVG_l)
$rectWindowRef_t:=SVG_New_rect ($svgRef_t;0;0;$widthSVG_l;$heightSVG_l;0;0;"none";$windowBGColor;0)

$rectBannerBGRef_t:=SVG_New_rect ($svgRef_t;$pbContainerX_l;$pbContainerY_l;$pbContainerWidth_l;$pbContainerHeight_l;$pbContainerCornerRadius;$pbContainerCornerRadius;$pbContainerBorderColor;$pbContainerBGColor;$pbContainerBorderSize)
If ($barbershop_b)
	$indice:=$instance_obj.bar.indice
	
	If ($indice=0)
		$barWidth2_l:=$barHeight_l
	Else 
		  //If ($indice=105)
		  //TRACE
		  //End if 
		$barWidth2_l:=$barWidth_l*$indice/100
		If ($barWidth2_l<=$barHeight_l)
			$barWidth2_l:=$barHeight_l
		End if 
	End if 
	
	
	Case of 
		: ($direction="right")
			$barX2_l:=$barX_l
			
		: ($direction="right2")
			
			$barX2_l:=($barWidth_l*$barStart_l/100)+$barX_l
			$barWidth2_l:=$barWidth_l*(100-$barStart_l)/100
			
			If ($barWidth2_l<$barHeight_l)
				$barWidth2_l:=$barHeight_l
				$barX2_l:=$barX_l+$barWidth_l-$barHeight_l
			End if 
			
			
		: ($direction="left2")
			$barX2_l:=($barWidth_l*$barStart_l/100)+$barX_l
			$barWidth2_l:=$barWidth_l*(100-$barStart_l)/100
			
			If ($barWidth2_l<$barHeight_l)
				$barWidth2_l:=$barHeight_l
				$barX2_l:=$barX_l+$barWidth_l-$barHeight_l
			End if 
			
			
		: ($direction="left")
			$barX2_l:=$barX_l
		Else 
			
	End case 
	
	
	
	$rectBannerFRef_t:=SVG_New_rect ($svgRef_t;$barX2_l;$barY_l;$barWidth2_l;$barHeight_l;$barCornerRadius;$barCornerRadius;$pbContainerBorderColor;$barFGColor;$barBorderSize)
	
Else 
	
	
	If (Round:C94(($pbContainerWidth_l*$percent_r/100)+0.5;0)>=($pbContainerCornerRadius*2))  //
		$width_l:=$barWidth_l*$percent_r/100
		$rectBannerFRef_t:=SVG_New_rect ($svgRef_t;$barX_l;$barY_l;$width_l;$barHeight_l;$barBorderSize;$barCornerRadius;$pbContainerBorderColor;$barFGColor;$barBorderSize)
	Else 
		If ($percent_r>0)
			$width_l:=$barCornerRadius*2
			$rectBannerFRef_t:=SVG_New_rect ($svgRef_t;$barX_l;$barY_l;$width_l;$barHeight_l;$barCornerRadius;$barBorderSize;$pbContainerBorderColor;$barFGColor;$barBorderSize)
		End if 
		
	End if 
	
	
	
End if 

If ($displayPercent_b)
	
	Case of 
		: ($textPosition_t="middle")
			$fontsize_l:=Round:C94($barHeight_l/1.25;0)
			
		: ($textPosition_t="top")
			$barY_l:=0
			
		: ($textPosition_t="bottom")
			$barY_l:=$heightSVG_l-($fontsize_l*1.25)
			
		Else 
			$fontsize_l:=Round:C94($barHeight_l/1.25;0)
	End case 
	
	
	
	$title_t:=$instance_obj.text.title
	$title_t:=Replace string:C233($title_t;"$value_l";String:C10(Round:C94($percent_r;0)))
	$title_t:=Replace string:C233($title_t;"$value_r";String:C10($percent_r;"##0.0"))
	$textBannerFRef_t:=SVG_New_textArea ($svgRef_t;$title_t;$barX_l;$barY_l;$barWidth_l;$fontsize_l*1.25;$fontName_t;$fontsize_l;Utl_fontStyle2Constant ($fontStyle_t);Align center:K42:3)
	SVG_SET_FONT_COLOR ($textBannerFRef_t;$fontColor_t)
End if 

If (False:C215)
	SVGTool_SHOW_IN_VIEWER ($svgRef_t)
End if 

SVG EXPORT TO PICTURE:C1017($svgRef_t;$pict)
SVG_CLEAR ($svgRef_t)



OBJECT Get pointer:C1124(Object named:K67:5;$pictObjecteNamet_t)->:=$pict
AJUI_ResizePictObjAfterDraw ($pictObjecteNamet_t;$pict)


