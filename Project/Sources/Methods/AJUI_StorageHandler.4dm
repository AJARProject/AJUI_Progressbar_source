//%attributes = {"invisible":true}
  // AJUI_StorageHandler ( $instanceName_t { ; $newValue_b } ) -> return
  //
  // $instanceName_t : (text) description
  // $newValue_b : (boolean) (optional) description
  // return : (boolean) (return) return value
  //
  // short_description

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 03.06.19, 09:41:48
	  // ----------------------------------------------------
	  // Method: AJUI_StorageHandler
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($1;$instanceName_t)
C_BOOLEAN:C305($2;$newValue_b)
C_BOOLEAN:C305($0;$currentValue_b)
C_OBJECT:C1216($instanceStorage_obj)

$instanceName_t:=$1

  //create a new property in the storage if it's a new instance
If (Storage:C1525.barbershop.run[$instanceName_t]=Null:C1517)
	Use (Storage:C1525.barbershop)
		Storage:C1525.barbershop.run[$instanceName_t]:=False:C215
	End use 
End if 


If (Count parameters:C259=2)
	$newValue_b:=$2
	Use (Storage:C1525.barbershop)
		Storage:C1525.barbershop.run[$instanceName_t]:=$newValue_b
	End use 
Else 
	$0:=Storage:C1525.barbershop.run[$instanceName_t]
End if 
