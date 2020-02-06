//%attributes = {"invisible":true}
  // AJUI_GetSet_CPBPercentValue ( $percentValue_r ) -> return
  //
  // $percentValue_r : (real) value between 0 and 100
  // return : (real) (return) return current percent value
  //
  // Getter and Setter of the percent value for the bar

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 28.05.19, 14:26:53
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_CPBPercentValue
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_REAL:C285($0;$1;$percentValue_r)

If (Count parameters:C259=0)
	$0:=This:C1470.cpb.percent.value.current
Else 
	$percentValue_r:=$1
	If ($percentValue_r>=0) & ($percentValue_r<=100)
		This:C1470.cpb.percent.value.current:=$percentValue_r
	End if 
End if 
