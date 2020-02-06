//%attributes = {"invisible":true}
  // AJUI_GetSet_PBTextPosition ( $position_t ) -> return
  //
  // $position_t : (text) position
  // return : (text) (return) return current text position
  //
  // Getter and setter for the text position

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 05.06.19, 09:07:46
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBTextPosition
	  // Description
	  //  Available : top, middle and bottom
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$position_t)

If (Count parameters:C259=0)
	$0:=This:C1470.text.position
Else 
	$position_t:=$1
	This:C1470.text.position:=$position_t
End if 