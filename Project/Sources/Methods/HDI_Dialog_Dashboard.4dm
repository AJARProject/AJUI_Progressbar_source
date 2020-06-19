//%attributes = {"invisible":true,"shared":true}
  // HDI_Dialog_Dashboard (  ) 

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 06.06.19, 10:37:45
	  // ----------------------------------------------------
	  // Method: HDI_Dialog_Dashboard
	  // Description
	  // HDI dialog to show an exemple of dashboard
	  //
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($winRef_l)

$winRef_l:=Open form window:C675("AJUI_testDashboard";Plain form window:K39:10;On the left:K39:2;At the top:K39:5)
DIALOG:C40("AJUI_testDashboard")