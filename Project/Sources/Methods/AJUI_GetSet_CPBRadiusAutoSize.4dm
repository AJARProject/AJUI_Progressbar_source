//%attributes = {"invisible":true}
  // AJUI_GetSet_CPBRadiusAutoSize ( $autoSize ) -> return
  //
  // $autoSize : (boolean) auto sized radius
  // return : (boolean) (return) return current mode
  //
  // Getter and setter to activate/desactivate the calculation of the radius based on the form object size

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 21.06.19, 13:52:23
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_CPBRadiusAutoSize
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_BOOLEAN:C305($0;$1;$autoSize)

If (Count parameters:C259=0)
	$0:=This:C1470.cpb.autoRadiusSize
Else 
	$autoSize:=$1
	This:C1470.cpb.autoRadiusSize:=$autoSize
End if 
