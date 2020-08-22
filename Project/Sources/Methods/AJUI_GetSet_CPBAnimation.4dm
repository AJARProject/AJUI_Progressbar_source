//%attributes = {"invisible":true}
// AJUI_GetSet_CPBAnimation ( $activateAnimation_b ) -> return
//
// $activateAnimation_b : (boolean) set animation
// return : (boolean) (return) return current value
//
// Getter and setter method to activate/inactivate the animation

If (False:C215)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 03.06.19, 15:36:59
	// ----------------------------------------------------
	// Method: AJUI_GetSet_CPBAnimation
	// Description
	// 
	//
	// ----------------------------------------------------
End if 


C_BOOLEAN:C305($0;$1;$activateAnimation_b)

If (Count parameters:C259=0)
	$0:=This:C1470.cpb.percent.animated
Else 
	$activateAnimation_b:=$1
	This:C1470.cpb.percent.animated:=$activateAnimation_b
End if 