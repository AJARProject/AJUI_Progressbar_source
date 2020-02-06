//%attributes = {"invisible":true}
  // AJUI_GetSet_CPBPictFormObjName ( $pictFormObjName_t ) -> return
  //
  // $pictFormObjName_t : (text) picture form object name
  // return : (text) (return) return current form object
  //
  // Getter and setter for the name of the picture form object who receive the svg

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 28.05.19, 15:28:38
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_CPBPictFormObjName
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$pictFormObjName_t)

If (Count parameters:C259=0)
	$0:=This:C1470.cpb.bar.pictureFormObjName
Else 
	$pictFormObjName_t:=$1
	This:C1470.cpb.bar.pictureFormObjName:=$pictFormObjName_t
End if 