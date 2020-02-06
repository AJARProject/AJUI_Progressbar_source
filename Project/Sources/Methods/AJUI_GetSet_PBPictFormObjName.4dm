//%attributes = {"invisible":true}
  // AJUI_GetSet_PBPictFormObjName ( $pictFormObjName_t ) -> return
  //
  // $pictFormObjName_t : (text) picture form object name
  // return : (text) (return) return current form object
  //
  // Getter and setter for the name of the picture form object who receive the svg

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 24.05.19, 13:58:56
	  // ----------------------------------------------------
	  // Method: AJUI_GetSet_PBPictFormObjName
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$pictFormObjName_t)

If (Count parameters:C259=0)
	$0:=This:C1470.bar.pictureFormObjName
Else 
	$pictFormObjName_t:=$1
	This:C1470.bar.pictureFormObjName:=$pictFormObjName_t
End if 


