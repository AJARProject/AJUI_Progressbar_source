//%attributes = {"invisible":true}
// AJUI_PBProcessHandler ( $instance_obj ) 
//
// $instance_obj : (object) instance of a PB
//
// This method execute the specific worker for an instance of PB

If (False:C215)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 27.05.19, 09:43:10
	// ----------------------------------------------------
	// Method: AJUI_PBProcessHandler
	// Description
	// 
	//
	// ----------------------------------------------------
End if 



C_OBJECT:C1216($1;$instance_obj)
C_BOOLEAN:C305($barbershop_b)
C_TEXT:C284($animationProcessName_t)

$instance_obj:=$1
$barbershop_b:=$instance_obj.bar.isBarbershop
$animationProcessName_t:="$AJUI_PBanimate"+$instance_obj.bar.pictureFormObjName

If ($barbershop_b)
	$ref:=New process:C317("AJUI_PBdraw";0;$animationProcessName_t;$instance_obj)
Else 
	
	If ($instance_obj.percent.animated)
		$ref:=New process:C317("AJUI_PBanimationHandler";0;$animationProcessName_t;$instance_obj)
	Else 
		AJUI_PBdraw($instance_obj)
	End if 
End if 