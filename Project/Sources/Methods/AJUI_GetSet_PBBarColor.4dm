//%attributes = {"invisible":true}
  // AJUI_GetSet_PBBarColor ( $BarColor_t ) -> return
  //
  // $BarColor_t : (text) color
  // return : (text) (return) return current bar color
  //
  // Getter and setter for the bar color

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 24.05.19, 13:50:54
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBBarColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$barColor_t)

If (Count parameters:C259=0)
	$0:=This:C1470.bar.color
Else 
	$barColor_t:=$1
	If ($barColor_t#"")
		This:C1470.bar.color:=$barColor_t
	Else 
		This:C1470.bar.color:="none"
	End if 
End if 
