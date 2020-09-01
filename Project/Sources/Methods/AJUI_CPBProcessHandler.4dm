//%attributes = {"invisible":true}
// AJUI_CPBProcessHandler ( $instance_obj ) 
//
// $instance_obj : (object) instance of a CPB
//
// This method execute the specific worker for an instance of CPB

If (False:C215)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 28.05.19, 15:00:18
	// ----------------------------------------------------
	// Method: AJUI_CPBProcessHandler
	// Description
	// 
	//
	// ----------------------------------------------------
End if 

C_OBJECT:C1216($1;$instance_obj)
C_BOOLEAN:C305($barbershop_b)
C_TEXT:C284($animationProcessName_t)

$instance_obj:=$1
$barbershop_b:=$instance_obj.cpb.bar.isBarbershop
$animationProcessName_t:="$AJUI_CPBanimate"+$instance_obj.cpb.bar.pictureFormObjName

If ($barbershop_b)
	$ref:=New process:C317("AJUI_CPBdraw";0;$animationProcessName_t;$instance_obj)
Else 
	If ($instance_obj.cpb.percent.animated)
		$ref:=New process:C317("AJUI_CPBanimationHandler";0;$animationProcessName_t;$instance_obj)
	Else 
		AJUI_CPBdraw($instance_obj)
	End if 
End if 