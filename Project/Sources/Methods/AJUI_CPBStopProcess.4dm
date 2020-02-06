//%attributes = {"invisible":true}
  // AJUI_CPBStopProcess (  ) 
  //
  //
  // This method will stop the CPB process and kill related workers

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 27.05.19, 09:14:58
	  // ----------------------------------------------------
	  // Method: AJUI_CPBStopProcess
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($animationWorkerName_t;$instanceName_T)

$instanceName_T:=This:C1470.cpb.bar.pictureFormObjName

$animationWorkerName_t:="AJUI_CPBanimate"+$instanceName_T


AJUI_StorageHandler ($instanceName_T;False:C215)

$process_l:=Process number:C372($animationWorkerName_t)
RESUME PROCESS:C320($process_l)
KILL WORKER:C1390($animationWorkerName_t)


