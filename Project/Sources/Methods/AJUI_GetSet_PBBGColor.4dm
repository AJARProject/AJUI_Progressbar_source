//%attributes = {"invisible":true}
  // AJUI_GetSet_PBBGColor ( $PBBGColor_t ) -> return
  //
  // $PBBGColor_t : (text) Color
  // return : (text) (return) return current BG Color
  //
  // Getter and setter for the background color of the progress area

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 27.04.19, 08:15:23
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBBGColor
	  // Description
	  // 
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 



C_TEXT:C284($0;$1;$PBBGColor_t)

If (Count parameters:C259=0)
	$0:=This:C1470.progressArea.backgroundColor
Else 
	$PBBGColor_t:=$1
	If ($PBBGColor_t#"")
		This:C1470.progressArea.backgroundColor:=$PBBGColor_t
	Else 
		This:C1470.progressArea.backgroundColor:="none"
	End if 
End if 