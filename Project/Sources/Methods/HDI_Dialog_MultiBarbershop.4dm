//%attributes = {"invisible":true,"shared":true}
  // HDI_Dialog_MultiBarbershop (  ) 


If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 06.06.19, 10:38:38
	  // ----------------------------------------------------
	  // Method: HDI_Dialog_MultiBarbershop
	  // Description
	  // HDI dialog to show an exemple of multiple barbershop used in same time
	  //
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($winRef_l)

$winRef_l:=Open form window:C675("AJUI_testMultiBarbershop";Plain form window:K39:10;On the left:K39:2;At the top:K39:5)
DIALOG:C40("AJUI_testMultiBarbershop")