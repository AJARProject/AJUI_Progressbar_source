//%attributes = {"invisible":true}
  // AJUI_GetSet_PBCornerRadius ( $PBCornerRadius_l ) -> return
  //
  // $PBCornerRadius_l : (longint) corner radius
  // return : (longint) (return) return current corner radius
  //
  // Gettter and setter for the value of the corner radius of the progress area

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 27.04.19, 08:10:08
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBCornerRadius
	  // Description
	  // 
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($0;$1;$PBCornerRadius_l)

If (Count parameters:C259=0)
	$0:=This:C1470.progressArea.cornerRadius
Else 
	$PBCornerRadius_l:=$1
	If ($PBCornerRadius_l>=0)
		This:C1470.progressArea.cornerRadius:=$PBCornerRadius_l
	End if 
End if 
