//%attributes = {"invisible":true}
  // AJUI_GetSet_PBTextFontStyle ( $fontStyle_t ) -> return
  //
  // $fontStyle_t : (text) font style
  // return : (text) (return) return current font style
  //
  // Getter and setter for the font style

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 24.05.19, 14:10:41
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBTextFontStyle
	  // Description
	  // Available : bold, italic, underline, strikethrough
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($0;$1;$fontStyle_t)

If (Count parameters:C259=0)
	$0:=This:C1470.percent.font.style
Else 
	$fontStyle_t:=$1
	This:C1470.percent.font.style:=$fontStyle_t
End if 