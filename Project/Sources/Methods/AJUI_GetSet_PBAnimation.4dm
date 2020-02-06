//%attributes = {"invisible":true}
  // AJUI_GetSet_PBAnimation ( $activateAnimation_b } ) -> return
  //
  // $activateAnimation_b : (boolean) set animation
  // return : (boolean) (return) return current value
  //
  // Getter and setter method to activate/inactivate the animation

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 03.06.19, 15:38:18
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBAnimation
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_BOOLEAN:C305($0;$1;$activateAnimation_b)

If (Count parameters:C259=0)
	$0:=This:C1470.percent.animation
Else 
	$activateAnimation_b:=$1
	This:C1470.percent.animation:=$activateAnimation_b
End if 