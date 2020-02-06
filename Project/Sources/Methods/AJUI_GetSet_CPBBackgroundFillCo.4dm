//%attributes = {"invisible":true}
  // AJUI_GetSet_CPBBackgroundFillCo ( $BGFillColor_t ) -> return
  //
  // $BGFillColor_t : (text) Color
  // return : (text) (return) return current fill color
  //
  // Gettter and setter for the internal background color 

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 28.05.19, 13:59:47
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_CPBBackgroundFillCo
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$BGFillColor_t)

If (Count parameters:C259=0)
	$0:=This:C1470.cpb.bgBar.fillColor
Else 
	$BGFillColor_t:=$1
	If ($BGFillColor_t#"")
		This:C1470.cpb.bgBar.fillColor:=$BGFillColor_t
	Else 
		This:C1470.cpb.bgBar.fillColor:="none"
	End if 
End if 