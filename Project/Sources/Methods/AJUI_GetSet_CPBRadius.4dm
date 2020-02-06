//%attributes = {"invisible":true}
  // AJUI_GetSet_CPBRadius ( $radius_l ) -> return
  //
  // $radius_l : (longint) radius size
  // return : (longint) (return) return current radius size
  //
  // Getter and setter for the size of the radius of the CPB

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 28.05.19, 13:42:17
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_CPBRadius
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($0;$1;$radius_l)

If (Count parameters:C259=0)
	$0:=This:C1470.cpb.radius
Else 
	$radius_l:=$1
	If ($radius_l>=0)
		This:C1470.cpb.radius:=$radius_l
	End if 
End if 