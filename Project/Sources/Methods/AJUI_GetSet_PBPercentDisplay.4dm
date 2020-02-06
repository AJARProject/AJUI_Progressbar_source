//%attributes = {"invisible":true}
  // AJUI_GetSet_PBPercentDisplay ($displayPercent_b ) -> return
  //
  // $displayPercent_b : (boolean) show/hide
  // return : (boolean) (return) return current value
  //
  // Getter and setter to show/hide the the title 

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 24.05.19, 14:04:10
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBPercentDisplay
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_BOOLEAN:C305($0;$1;$displayPercent_b)

If (Count parameters:C259=0)
	$0:=This:C1470.percent.display
Else 
	$displayPercent_b:=$1
	This:C1470.percent.display:=$displayPercent_b
End if 