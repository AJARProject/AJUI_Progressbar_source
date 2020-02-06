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
C_TEXT:C284($animationWorkerName_t)

$instance_obj:=$1
$barbershop_b:=$instance_obj.cpb.bar.isBarbershop
$animationWorkerName_t:="AJUI_CPBanimate"+$instance_obj.cpb.bar.pictureFormObjName

If ($barbershop_b)
	CALL WORKER:C1389($animationWorkerName_t;"AJUI_CPBdraw";$instance_obj)
Else 
	CALL WORKER:C1389($animationWorkerName_t;"AJUI_CPBanimationHandler";$instance_obj)
End if 