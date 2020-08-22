//%attributes = {"invisible":true}
// AJUI_PBStopProcess (  ) 
//
//
// This method will stop the PB process and kill related workers

If (False:C215)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 27.05.19, 09:14:58
	// ----------------------------------------------------
	// Method: AJUI_PBStopProcess
	// Description
	// 
	//
	// ----------------------------------------------------
End if 

C_TEXT:C284($animationWorkerName_t;$instanceName_t)

$instanceName_t:=This:C1470.bar.pictureFormObjName

$animationWorkerName_t:="AJUI_PBanimate"+$instanceName_t

AJUI_StorageHandler($instanceName_t;False:C215)

$process_l:=Process number:C372($animationWorkerName_t)
RESUME PROCESS:C320($process_l)
KILL WORKER:C1390($animationWorkerName_t)


