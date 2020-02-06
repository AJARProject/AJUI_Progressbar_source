//%attributes = {"invisible":true}
  // AJUI_GetSet_PBTextAlign ( param1 { ; param2 } ) -> return
  //
  // param1 : (text) description
  // param2 : (text) (optional) description
  // return : (text) (return) return value
  //
  // short_description

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 24.05.19, 14:38:40
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBTextAlign
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$textAlign_t)

If (Count parameters:C259=0)
	$0:=This:C1470.percent.font.alignement
Else 
	$textAlign_t:=$1
	This:C1470.percent.font.alignement:=$textAlign_t
End if 
