//%attributes = {}
// HDI_Dialog_TestCPB (  ) 

If (False:C215)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 06.06.19, 10:34:53
	// ----------------------------------------------------
	// Method: HDI_Dialog_TestCPB
	// Description
	// HDI Dialog to test the circular progress bar
	//
	// ----------------------------------------------------
End if 

C_LONGINT:C283($winRef_l)

$winRef_l:=Open form window:C675("AJUI_testCircularPB_class";Plain form window:K39:10;On the left:K39:2;At the top:K39:5)
DIALOG:C40("AJUI_testCircularPB_class")