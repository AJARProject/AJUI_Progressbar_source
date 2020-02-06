//%attributes = {"invisible":true}
  // AJUI_GetSet_PBTextFontSize ( $fontSize_l ) -> return
  //
  // $fontSize_l : (longint) font size
  // return : (text) (longint) return current font size
  //
  // Getter and setter for the font size

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 24.05.19, 14:36:01
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBTextFontSize
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($0;$1;$fontSize_l)

If (Count parameters:C259=0)
	$0:=This:C1470.percent.font.size
Else 
	$fontSize_l:=$1
	If ($fontSize_l>0)
		This:C1470.percent.font.size:=$fontSize_l
	End if 
End if 
