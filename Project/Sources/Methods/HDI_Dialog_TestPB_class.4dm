//%attributes = {"shared":true}
// HDI_Dialog_TestPB (  ) 


If (False:C215)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 06.06.19, 10:36:08
	// ----------------------------------------------------
	// Method: HDI_Dialog_TestPB
	// Description
	// HDI Dialog to test the progress bar
	//
	// ----------------------------------------------------
End if 

C_LONGINT:C283($winRef_l)

$winRef_l:=Open form window:C675("AJUI_testProgressBar_class";Plain form window:K39:10;On the left:K39:2;At the top:K39:5)
DIALOG:C40("AJUI_testProgressBar_class")