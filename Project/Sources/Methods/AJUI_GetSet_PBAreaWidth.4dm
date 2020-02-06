//%attributes = {"invisible":true}
  // AJUI_GetSet_PBAreaWidth ( $width_l) -> return
  //
  // $width_l : (longint) width
  // return : (longint) (return) return current width
  //
  // Getter and setter for the width of the progressbar

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 27.04.19, 08:10:08
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBAreaWidth
	  // Description
	  // 
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($0;$1;$width_l)

If (Count parameters:C259=0)
	$0:=This:C1470.progressArea.width
Else 
	$width_l:=$1
	If ($width_l>=0)
		This:C1470.progressArea.width:=$width_l
		
	End if 
End if 