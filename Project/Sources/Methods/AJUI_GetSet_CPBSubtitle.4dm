//%attributes = {"invisible":true}
  // AJUI_GetSet_CPBSubtitle ($subtitle_t ) -> return
  //
  // $subtitle_t : (text) new subtitle
  // return : (text) (return) return subtitle
  //
  // Getter and setter for the label of the subtitle

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 29.05.19, 15:08:13
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_CPBSubtitle
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$subtitle_t)

If (Count parameters:C259=0)
	$0:=This:C1470.cpb.text.subtitle
Else 
	$subtitle_t:=$1
	This:C1470.cpb.text.subtitle:=$subtitle_t
End if 