//%attributes = {"invisible":true}
  // AJUI_GetSet_CPBPercentDisplay ( $displayPercent_b ) -> return
  //
  // $displayPercent_b : (boolean) show/hide
  // return : (boolean) (return) return current value
  //
  // Getter and setter to show/hide the the title and subtitle

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 28.05.19, 14:25:43
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_CPBPercentDisplay
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_BOOLEAN:C305($0;$1;$displayPercent_b)

If (Count parameters:C259=0)
	$0:=This:C1470.cpb.percent.display
Else 
	$displayPercent_b:=$1
	This:C1470.cpb.percent.display:=$displayPercent_b
End if 