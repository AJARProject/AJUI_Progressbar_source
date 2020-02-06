//%attributes = {"invisible":true}
  // AJUI_GetSet_CPBTextFontName ( $fontName_t ) -> return
  //
  // $fontName_t : (text) font name
  // return : (text) (return) return current font name
  //
  // Getter and setter for the font name

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 28.05.19, 14:28:23
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_CPBTextFontName
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$fontName_t)

If (Count parameters:C259=0)
	$0:=This:C1470.cpb.percent.font.name
Else 
	$fontName_t:=$1
	This:C1470.cpb.percent.font.name:=$fontName_t
End if 
