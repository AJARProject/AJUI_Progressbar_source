//%attributes = {"invisible":true}

  // New SVG Circle ( object ) -> SVG result ref
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 09.05.19, 08:32:37
	  // ----------------------------------------------------
	  // Method: SVG_New_circle
	  // Description
	  // 
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($1;$arc)
C_TEXT:C284($0;$ref_t;$svgRef_t)
C_REAL:C285($cx_r;$cy_r;$cx2_r;$cy2_r;$arcRadius_r;$linetoy_r;$linetox_r;$arcStart_r;$arcEnd_r)

$arc:=$1

$svgRef_t:=$arc.parentSVGObject
$cx_r:=$arc.x
$cy_r:=$arc.y
$arcRadius_r:=$arc.radius
$arcStart_r:=$arc.start*Degree:K30:2
$arcEnd_r:=$arc.end*Degree:K30:2
$arcFGBarColor_t:=$arc.foregroundColor
$arcBGBarColor_t:=$arc.backgroundColor
$arcBGBarBorderSize_r:=$arc.strokeWidth
$circBarlinecap:=$arc.strokeLinecap


  // arc definition
$linetox_r:=(Sin:C17($arcStart_r)*$arcRadius_r)+$cx_r
$linetoy_r:=-(Cos:C18($arcStart_r)*$arcRadius_r)+$cy_r
$cx2_r:=Round:C94((Sin:C17($arcEnd_r)*$arcRadius_r)+$cx_r;2)
$cy2_r:=Round:C94(-(Cos:C18($arcEnd_r)*$arcRadius_r)+$cy_r;2)
  //Position
$arc_pathDef_t:="M "+String:C10($linetox_r;"&xml")+" "+String:C10($linetoy_r;"&xml")
  //lineto
$arc_pathDef_t:=$arc_pathDef_t+" L"+String:C10($linetox_r;"&xml")+" "+String:C10($linetoy_r;"&xml")
  //arc
$arc_pathDef_t:=$arc_pathDef_t+" A "+String:C10($arcRadius_r;"&xml")+" "+String:C10($arcRadius_r;"&xml")+","
$arc_pathDef_t:=$arc_pathDef_t+" 0 "

If (Abs:C99($arcEnd_r-$arcStart_r)>(180*Degree:K30:2))
	$largeArcFlag:="1"
Else 
	$largeArcFlag:="0"
End if 
$arc_pathDef_t:=$arc_pathDef_t+$largeArcFlag+",1 "
$arc_pathDef_t:=$arc_pathDef_t+String:C10($cx2_r;"&xml")+","+String:C10($cy2_r;"&xml")

$ref_t:=DOM Create XML element:C865($svgRef_t;"path")

DOM SET XML ATTRIBUTE:C866($ref_t;"d";$arc_pathDef_t)

  //DOM SET XML ATTRIBUTE($ref_t;"cx";$cx_r;"cy";$cy_r;"r";$arcRadius_r;"start";$arcStart_r;"end";$arcEnd_r)
  //Border or Stroke
If ($arcFGBarColor_t#Null:C1517)
	If ($arcFGBarColor_t#"")
		$o:=AJUI_ExtractColor ($arcFGBarColor_t)
		DOM SET XML ATTRIBUTE:C866($ref_t;"stroke";$o.color)
		If ($o.opacity#Null:C1517)
			DOM SET XML ATTRIBUTE:C866($ref_t;"stroke-opacity";$o.opacity)
		End if 
	Else 
		DOM SET XML ATTRIBUTE:C866($ref_t;"stroke";"none")
	End if 
Else 
	DOM SET XML ATTRIBUTE:C866($ref_t;"stroke";"none")
End if 
  //Fill
If ($arcBGBarColor_t#Null:C1517)
	If ($arcBGBarColor_t#"")
		$o:=AJUI_ExtractColor ($arcBGBarColor_t)
		DOM SET XML ATTRIBUTE:C866($ref_t;"fill";$o.color)
		If ($o.opacity#Null:C1517)
			DOM SET XML ATTRIBUTE:C866($ref_t;"fill-opacity";$o.opacity)
		End if 
	Else 
		DOM SET XML ATTRIBUTE:C866($ref_t;"fill";"none")
	End if 
Else 
	DOM SET XML ATTRIBUTE:C866($ref_t;"fill";"none")
End if 

  // stroke size
If ($arcBGBarBorderSize_r>0)
	DOM SET XML ATTRIBUTE:C866($ref_t;"stroke-width";$arcBGBarBorderSize_r)
Else 
	DOM SET XML ATTRIBUTE:C866($ref_t;"stroke";"none")
End if 

  // stroke line-cap
If ($circBarlinecap#Null:C1517)
	If ($circBarlinecap#"")
		$o:=AJUI_ExtractColor ($circBarlinecap)
		DOM SET XML ATTRIBUTE:C866($ref_t;"stroke-linecap";$circBarlinecap)
	End if 
Else 
	DOM SET XML ATTRIBUTE:C866($ref_t;"stroke-linecap";"butt")  // default
End if 

C_TEXT:C284($vtMyText)
DOM EXPORT TO VAR:C863($ref_t;$vtMyText)

$0:=$ref_t


  //<circle cx="40"cy="40"r="24" style="stroke:#006600;stroke-width: 3;fill:#00cc00"/>

