//%attributes = {"invisible":true}
  // AJUI_ExtractColor ( color ) -> result
  //
  // color : (text) E.g. "red:80""
  // result : (object) return : color (test), opacity (longint)

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 09.05.19, 08:53:15
	  // ----------------------------------------------------
	  // Method: AJUI_ExtractColor
	  // Description
	  // Split the color string to extract the opacity if any
	  //
	  // 
	  // ----------------------------------------------------
End if 

C_TEXT:C284($1;$color_t)
C_OBJECT:C1216($0;$result)
C_COLLECTION:C1488($col)
$color_t:=$1
$result:=New object:C1471

$col:=Split string:C1554($color_t;":")

If ($col.count()=2)
	$result.color:=$col[0]
	$result.opacity:=$col[1]+"%"
Else 
	$result.color:=$col[0]
End if 

$0:=$result