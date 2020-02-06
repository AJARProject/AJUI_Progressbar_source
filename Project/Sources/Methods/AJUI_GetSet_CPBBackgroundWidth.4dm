//%attributes = {"invisible":true}
  // AJUI_GetSet_CPBBackgroundwidth ($width_l ) -> return
  //
  // $width_l : (longint) width
  // return : (longint) (return) return curent BG width
  //
  // Getter and setter for the the width of the background

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 28.05.19, 13:54:46
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_CPBBackgroundwidth
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($0;$1;$width_l)

If (Count parameters:C259=0)
	$0:=This:C1470.cpb.bgBar.width
Else 
	$width_l:=$1
	If ($width_l>=0)
		This:C1470.cpb.bgBar.width:=$width_l
	End if 
End if 
