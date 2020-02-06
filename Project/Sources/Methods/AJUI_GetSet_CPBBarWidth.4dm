//%attributes = {"invisible":true}
  // AJUI_GetSet_CPBBarWidth ( $width_l ) -> return
  //
  // $width_l : (longint) width
  // return : (longint) (return) return current bar width
  //
  // Getter and setter for the bar width

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 28.05.19, 14:00:56
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_CPBBarWidth
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($0;$1;$width_l)

If (Count parameters:C259=0)
	$0:=This:C1470.cpb.bar.width
Else 
	$width_l:=$1
	If ($width_l>=0)
		This:C1470.cpb.bar.width:=$width_l
	End if 
End if 
