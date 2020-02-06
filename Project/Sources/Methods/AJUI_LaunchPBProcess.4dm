//%attributes = {"invisible":true}
  // AJUI_LaunchPBProcess ( {  $windowRef_l } ) 
  //
  // $windowRef_l : (text) (optional) description
  //
  // Launcher method to draw the circular progressbar

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 27.05.19, 09:10:13
	  // ----------------------------------------------------
	  // Method: AJUI_LaunchPBProcess
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($1;$windowRef_l)
C_TEXT:C284($instanceName_t;$processName_t)

$instanceName_t:=This:C1470.bar.pictureFormObjName

If (Count parameters:C259=1)
	This:C1470.msc.windowRef:=$1
Else 
	This:C1470.msc.windowRef:=Current form window:C827
End if 


If (This:C1470.bar.isBarbershop)
	This:C1470.bar.isBarbershop:=False:C215
End if 

AJUI_StorageHandler ($instanceName_t;False:C215)

$processName_t:="AJUI_ProgressBarProcess"+$instanceName_t
$newprocess:=New process:C317("AJUI_PBProcessHandler";0;$processName_t;This:C1470;*)
This:C1470.percent.value.previous:=This:C1470.percent.value.current