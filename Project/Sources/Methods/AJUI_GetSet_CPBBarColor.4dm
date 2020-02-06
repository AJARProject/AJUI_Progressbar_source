//%attributes = {"invisible":true}
  // AJUI_GetSet_CPBBarColor ( $BarColor_t ) -> return
  //
  // $BarColor_t : (text) color
  // return : (text) (return) return current bar color
  //
  // Getter and setter for the bar color

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 28.05.19, 14:01:53
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_CPBBarColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($0;$1;$BarColor_t)

If (Count parameters:C259=0)
	$0:=This:C1470.cpb.bar.color
Else 
	$BarColor_t:=$1
	If ($BarColor_t#"")
		This:C1470.cpb.bar.color:=$BarColor_t
	Else 
		This:C1470.cpb.bar.color:="none"
	End if 
End if 
