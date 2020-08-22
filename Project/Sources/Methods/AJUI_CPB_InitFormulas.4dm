//%attributes = {"invisible":true}
// AJUI_CircularPB_InitFormulas ( $instance_obj ) 
//
// $instance_obj : (object) instance of a CPB
//
// This method will init the formula linked to a CPB properties

If (False:C215)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 16.05.19, 14:43:25
	// ----------------------------------------------------
	// Method: AJUI_CircularPB_InitFormulas
	// Description
	// 
	//
	// ----------------------------------------------------
End if 

C_OBJECT:C1216($1;$instance_obj)

$instance_obj:=$1

//circular progessbar
$instance_obj.CPBExternalRadius:=Formula:C1597(AJUI_GetSet_CPBRadius)

$instance_obj.CPBRadiusAutoSize:=Formula:C1597(AJUI_GetSet_CPBRadiusAutoSize)

// Background Bar definition
$instance_obj.CPBBackgroundWidth:=Formula:C1597(AJUI_GetSet_CPBBackgroundWidth)
$instance_obj.CPBBackgroundColor:=Formula:C1597(AJUI_GetSet_CPBBackgroundColor)
$instance_obj.CPBBackgroundFillColor:=Formula:C1597(AJUI_GetSet_CPBBackgroundFillCo)

//progressBar definition
$instance_obj.CPBPictFormObjName:=Formula:C1597(AJUI_GetSet_CPBPictFormObjName)
$instance_obj.CPBBarWidth:=Formula:C1597(AJUI_GetSet_CPBBarWidth)
$instance_obj.CPBBarColor:=Formula:C1597(AJUI_GetSet_CPBBarColor)
$instance_obj.CPBBarSpeed:=Formula:C1597(AJUI_GetSet_CPBBarSpeed)
$instance_obj.CPBBarLinecap:=Formula:C1597(AJUI_GetSet_CPBBarLinecap)

//text definition
$instance_obj.CPBTitle:=Formula:C1597(AJUI_GetSet_CPBTitle)
$instance_obj.CPBSubtitle:=Formula:C1597(AJUI_GetSet_CPBSubtitle)

//percent definition
$instance_obj.CPBActivateAnimation:=Formula:C1597(AJUI_GetSet_CPBAnimation)
$instance_obj.CPBDisplayText:=Formula:C1597(AJUI_GetSet_CPBPercentDisplay)
$instance_obj.CPBPercentValue:=Formula:C1597(AJUI_GetSet_CPBPercentValue)
$instance_obj.CPBFontName:=Formula:C1597(AJUI_GetSet_CPBTextFontName)
$instance_obj.CPBFontSize:=Formula:C1597(AJUI_GetSet_CPBTextFontSize)
$instance_obj.CPBFontColor:=Formula:C1597(AJUI_GetSet_CPBTextFontColor)
$instance_obj.CPBFontStyle:=Formula:C1597(AJUI_GetSet_CPBTextFontStyle)

// manage process
$instance_obj.LaunchCircularProgressBar:=Formula:C1597(AJUI_LaunchCPBProcess)
$instance_obj.LaunchCircularBarberShop:=Formula:C1597(AJUI_LaunchCPBBarberShopProcess)
$instance_obj.StopCPBProcess:=Formula:C1597(AJUI_CPBStopProcess)

