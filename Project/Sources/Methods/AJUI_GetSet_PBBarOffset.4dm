//%attributes = {"invisible":true}
  // AJUI_GetSet_PBBarOffset ( $offset_l ) -> return
  //
  // $offset_l : (longint) offset
  // return : (longint) (return) return current offset
  //
  // Getter and setter for the offset of the bar

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 24.05.19, 13:54:26
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBBarOffset
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_REAL:C285($0;$1;$offset_l)

If (Count parameters:C259=0)
	$0:=This:C1470.bar.offset
Else 
	$offset_l:=$1
	If ($offset_l>=0)
		This:C1470.bar.offset:=$offset_l
	End if 
End if 
