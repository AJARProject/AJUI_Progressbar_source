//%attributes = {"invisible":true}
  // AJUI_GetSet_PBTitle ( $title_t ) -> return
  //
  // $title_t : (text) new title 
  // return : (text) (return) return current title
  //
  // Getter and setter for the title label

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 03.06.19, 16:02:56
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBTitle
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$title_t)

If (Count parameters:C259=0)
	$0:=This:C1470.text.title
Else 
	$title_t:=$1
	This:C1470.text.title:=$title_t
End if 
