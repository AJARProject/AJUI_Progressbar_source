//%attributes = {"invisible":true}
  // AJUI_GetSet_PBTextFontName ( $fontName_t ) -> return
  //
  // $fontName_t : (text) font name
  // return : (text) (return) return current font name
  //
  // Getter and setter for the font name

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 24.05.19, 14:07:29
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBTextFontName
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$fontName_t)

If (Count parameters:C259=0)
	$0:=This:C1470.percent.font.name
Else 
	$fontName_t:=$1
	This:C1470.percent.font.name:=$fontName_t
End if 
