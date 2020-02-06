//%attributes = {"invisible":true}
  // AJUI_GetSet_CPBBackgroundColor ( $BGColor_t ) -> return
  //
  // $BGColor_t : (text) Color
  // return : (text) (return) return current BG Color
  //
  // Gettter and setter for the background color of the bar

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 28.05.19, 13:57:02
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_CPBBackgroundColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$BGColor_t)

If (Count parameters:C259=0)
	$0:=This:C1470.cpb.bgBar.color
Else 
	$BGColor_t:=$1
	If ($BGColor_t#"")
		This:C1470.cpb.bgBar.color:=$BGColor_t
	Else 
		This:C1470.cpb.bgBar.color:="none"
	End if 
End if 