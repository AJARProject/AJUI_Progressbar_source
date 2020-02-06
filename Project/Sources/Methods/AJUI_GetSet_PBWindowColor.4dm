//%attributes = {"invisible":true}
  // AJUI_GetSet_PBWindowColor ( $PBWindowColor_t ) -> return
  //
  // $PBWindowColor_t : (text) color
  // return : (text) (return) return current window BG color
  //
  // Getter and setter for the window background color

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 24.05.19, 13:46:32
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBWindowColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$PBWindowColor_t)

If (Count parameters:C259=0)
	$0:=This:C1470.svgArea.windowBGColor
Else 
	$PBWindowColor_t:=$1
	If ($PBWindowColor_t#"")
		This:C1470.svgArea.windowBGColor:=$PBWindowColor_t
	Else 
		This:C1470.svgArea.windowBGColor:="none"
	End if 
End if 