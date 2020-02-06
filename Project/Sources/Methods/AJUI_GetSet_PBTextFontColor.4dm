//%attributes = {"invisible":true}
  // AJUI_GetSet_PBTextFontColor ( $FontColor_t ) -> return
  //
  // $FontColor_t : (text) color
  // return : (text) (return) return current font color
  //
  // Getter and setter for the font color

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 07.06.19, 11:04:37
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBTextFontColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$FontColor_t)

If (Count parameters:C259=0)
	$0:=This:C1470.percent.font.color
Else 
	$FontColor_t:=$1
	If ($FontColor_t#"")
		This:C1470.percent.font.color:=$FontColor_t
	Else 
		This:C1470.percent.font.color:="none"
	End if 
End if 