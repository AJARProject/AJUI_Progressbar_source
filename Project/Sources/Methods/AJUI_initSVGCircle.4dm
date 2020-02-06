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



C_OBJECT:C1216($1;$circle)
C_TEXT:C284($0;$ref_t)
C_LONGINT:C283($x_l;$y_l;$circBgBarRadius_l)

  //$o:=AJUI_ExtractColor ("red:80")

$circle:=$1

$svgRef_t:=$circle.parentSVGObject
$x_l:=$circle.x
$y_l:=$circle.y
$circBgBarRadius_l:=$circle.radius
$circBgBarBorderColor_t:=$circle.foregroundColor
$circBgBarColor_t:=$circle.backgroundColor
$circBgBarBorderSize_l:=$circle.strokeWidth


$ref_t:=DOM Create XML element:C865($svgRef_t;"circle")

DOM SET XML ATTRIBUTE:C866($ref_t;"cx";$x_l;"cy";$y_l;"r";$circBgBarRadius_l)
  //Border or Stroke
If ($circBgBarBorderColor_t#Null:C1517)
	If ($circBgBarBorderColor_t#"")
		$o:=AJUI_ExtractColor ($circBgBarBorderColor_t)
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
If ($circBgBarColor_t#Null:C1517)
	If ($circBgBarColor_t#"")
		$o:=AJUI_ExtractColor ($circBgBarColor_t)
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
If ($circBgBarBorderSize_l>0)
	DOM SET XML ATTRIBUTE:C866($ref_t;"stroke-width";$circBgBarBorderSize_l)
Else 
	DOM SET XML ATTRIBUTE:C866($ref_t;"stroke";"none")
End if 

$0:=$ref_t


  //<circle cx="40"cy="40"r="24" style="stroke:#006600;stroke-width: 3;fill:#00cc00"/>

