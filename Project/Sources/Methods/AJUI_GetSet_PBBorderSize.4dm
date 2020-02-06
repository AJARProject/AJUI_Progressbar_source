//%attributes = {"invisible":true}
  // AJUI_GetSet_PBBorderSize ( $PBBorderSize_l ) -> return
  //
  // $PBBorderSize_l : (longint) size
  // return : (longint) (return) return current Border size
  //
  // Gettter and setter for the border size of the progress area

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 27.04.19, 08:10:08
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBBorderSize
	  // Description
	  // 
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($0;$1;$PBBorderSize_l)

If (Count parameters:C259=0)
	$0:=This:C1470.progressArea.borderSize
Else 
	$PBBorderSize_l:=$1
	If ($PBBorderSize_l>=0)
		This:C1470.progressArea.borderSize:=$PBBorderSize_l
	End if 
End if 