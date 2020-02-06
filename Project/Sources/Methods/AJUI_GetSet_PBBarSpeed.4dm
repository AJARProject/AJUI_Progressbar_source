//%attributes = {"invisible":true}
  // AJUI_GetSet_PBBarSpeed ( $barSpeed_r ) -> return
  //
  // $barSpeed_r : (real) speed
  // return : (real) (return) return current speed
  //
  // Getter and setter for the speed of the animations

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 24.05.19, 14:51:21
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBBarSpeed
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_REAL:C285($0;$1;$barSpeed_r)

If (Count parameters:C259=0)
	$0:=This:C1470.bar.speed
Else 
	$barSpeed_r:=$1
	If ($barSpeed_r>0) & ($barSpeed_r<=10)
		This:C1470.bar.speed:=$barSpeed_r
	End if 
End if 

