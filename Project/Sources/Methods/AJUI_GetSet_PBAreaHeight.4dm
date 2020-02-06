//%attributes = {"invisible":true}
  // AJUI_GetSet_PBAreaHeight ( $height_l) -> return
  //
  // $height_l : (longint) height
  // return : (longint) (return) return current height
  //
  // Getter and setter for the height of the progressbar

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 27.04.19, 08:10:08
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBAreaHeight
	  // Description
	  // 
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($0;$1;$height_l)

If (Count parameters:C259=0)
	$0:=This:C1470.progressArea.height
Else 
	$height_l:=$1
	If ($height_l>=0)
		This:C1470.progressArea.height:=$height_l
	End if 
End if 