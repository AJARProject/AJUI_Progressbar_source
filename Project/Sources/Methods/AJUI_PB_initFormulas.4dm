//%attributes = {"invisible":true}
  // AJUI_PB_initFormulas ( $instance_obj ) 
  //
  // $instance_obj : (object) instance of a PB
  //
  // This method will init the formula linked to a progressbar properties

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.05.19, 14:42:40
	  // ----------------------------------------------------
	  // Method: AJUI_PB_initFormulas
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($1;$instance_obj)

$instance_obj:=$1

  // container definition
$instance_obj.PBAreaHeight:=Formula:C1597(AJUI_GetSet_PBAreaHeight )
$instance_obj.PBAreaWidth:=Formula:C1597(AJUI_GetSet_PBAreaWidth )
$instance_obj.PBBGColor:=Formula:C1597(AJUI_GetSet_PBBGColor )
$instance_obj.PBBorderColor:=Formula:C1597(AJUI_GetSet_PBBorderColor )
$instance_obj.PBBorderSize:=Formula:C1597(AJUI_GetSet_PBBorderSize )
$instance_obj.PBCornerRadius:=Formula:C1597(AJUI_GetSet_PBCornerRadius )

  // SVG Area definition
$instance_obj.PBWindowColor:=Formula:C1597(AJUI_GetSet_PBWindowColor )

  //text definition
$instance_obj.PBTitle:=Formula:C1597(AJUI_GetSet_PBTitle )
$instance_obj.PBTextPosition:=Formula:C1597(AJUI_GetSet_PBTextPosition )

  // bar definition
$instance_obj.PBBarColor:=Formula:C1597(AJUI_GetSet_PBBarColor )
$instance_obj.PBBarOffset:=Formula:C1597(AJUI_GetSet_PBBarOffset )
$instance_obj.PBPictFormObjName:=Formula:C1597(AJUI_GetSet_PBPictFormObjName )
$instance_obj.PBBarSpeed:=Formula:C1597(AJUI_GetSet_PBBarSpeed )

  // percent definition
$instance_obj.PBActivateAnimation:=Formula:C1597(AJUI_GetSet_PBAnimation )
$instance_obj.PBDisplayText:=Formula:C1597(AJUI_GetSet_PBPercentDisplay )
$instance_obj.PBFontColor:=Formula:C1597(AJUI_GetSet_PBTextFontColor )
$instance_obj.PBFontName:=Formula:C1597(AJUI_GetSet_PBTextFontName )
$instance_obj.PBFontSize:=Formula:C1597(AJUI_GetSet_PBTextFontSize )
$instance_obj.PBFontStyle:=Formula:C1597(AJUI_GetSet_PBTextFontStyle )
$instance_obj.PBPercentValue:=Formula:C1597(AJUI_GetSet_PBPercentValue )

  // manage process
$instance_obj.LaunchProgressBar:=Formula:C1597(AJUI_LaunchPBProcess )
$instance_obj.LaunchBarberShop:=Formula:C1597(AJUI_LaunchBarberShopProcess )
$instance_obj.StopPBProcess:=Formula:C1597(AJUI_PBStopProcess )

$instance_obj:=$1