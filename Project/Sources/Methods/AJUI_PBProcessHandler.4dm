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
C_TEXT:C284($animationWorkerName_t)

$instance_obj:=$1
$barbershop_b:=$instance_obj.bar.isBarbershop
$animationWorkerName_t:="AJUI_PBanimate"+$instance_obj.bar.pictureFormObjName

If ($barbershop_b)
	CALL WORKER:C1389($animationWorkerName_t;"AJUI_PBdraw";$instance_obj)
Else 
	CALL WORKER:C1389($animationWorkerName_t;"AJUI_PBanimationHandler";$instance_obj)
End if 