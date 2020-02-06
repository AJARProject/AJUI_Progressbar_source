//%attributes = {"invisible":true}
  // AJUI_GetSet_CPBBarLinecap ( $linecap_t ) -> return
  //
  // $linecap_t : (text) linecap
  // return : (text) (return) return current linecap
  //
  // Getter and setter for the shape of the bar linecap

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 28.05.19, 14:17:52
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_CPBBarLinecap
	  // Description
	  // Value available : butt, round and square
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($0;$1;$linecap_t)

If (Count parameters:C259=0)
	$0:=This:C1470.cpb.bar.linecap
Else 
	$linecap_t:=$1
	This:C1470.cpb.bar.linecap:=$linecap_t
End if 