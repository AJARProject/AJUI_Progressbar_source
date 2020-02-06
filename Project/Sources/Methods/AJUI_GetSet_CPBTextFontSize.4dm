//%attributes = {"invisible":true}
  // AJUI_GetSet_CPBTextFontSize ( $fontSizePercent_l ) -> return
  //
  // $fontSizePercent_l : (longint) font size
  // return : (text) (longint) return current font size
  //
  // Getter and setter for the font size

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 28.05.19, 14:29:21
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_CPBTextFontSize
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($0;$1;$fontSizePercent_l)

If (Count parameters:C259=0)
	$0:=This:C1470.cpb.percent.font.size
Else 
	$fontSizePercent_l:=$1
	If ($fontSizePercent_l>0) & ($fontSizePercent_l<=100)
		This:C1470.cpb.percent.font.size:=$fontSizePercent_l
	End if 
End if 