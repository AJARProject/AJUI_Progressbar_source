//%attributes = {"invisible":true}
  // AJUI_GetSet_PBBorderColor ( $PBBorderColor_t ) -> return
  //
  // $PBBorderColor_t : (text) Color
  // return : (text) (return) return current Border Color
  //
  // Getter and setter for the border color of the progress area

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 27.04.19, 08:15:23
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBBorderColor
	  // Description
	  // 
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$PBBorderColor_t)

If (Count parameters:C259=0)
	$0:=This:C1470.progressArea.borderColor
Else 
	$PBBorderColor_t:=$1
	If ($PBBorderColor_t#"")
		This:C1470.progressArea.borderColor:=$PBBorderColor_t
	Else 
		This:C1470.progressArea.borderColor:="none"
	End if 
End if 