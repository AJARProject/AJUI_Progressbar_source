//%attributes = {"invisible":true,"preemptive":"capable"}
  // AJUI_CPBdraw ( $instance_obj ) 
  //
  // $instance_obj : (object) instance of a CPB
  //
  // This method launch the draw of the SVG and handle the barbershop process

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 28.05.19, 15:10:06
	  // ----------------------------------------------------
	  // Method: AJUI_CPBdraw
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($1;$instance_obj)
C_REAL:C285($speed_r;$delay_r)
C_LONGINT:C283($winTargetRef_l)
C_BOOLEAN:C305($run_barberShop_b;$barberShop_b)
C_TEXT:C284($direction_t)

$instance_obj:=$1

$speed_r:=$instance_obj.cpb.bar.speed
$delay_r:=$speed_r*1
$winTargetRef_l:=$instance_obj.cpb.msc.windowRef
$barberShop_b:=$instance_obj.cpb.bar.isBarbershop

If ($barberShop_b)
	
	$instance_obj.start:=0
	$instance_obj.end:=0
	$run_barberShop_b:=AJUI_StorageHandler ($instance_obj.cpb.bar.pictureFormObjName)
	
	While ($run_barberShop_b)
		
		If ($instance_obj.start>100)
			$instance_obj.start:=0
			$instance_obj.end:=0
		End if 
		
		If ($instance_obj.end<=20)
			$instance_obj.start:=0
		Else 
			$instance_obj.start:=$instance_obj.start+1
		End if 
		
		
		If ($instance_obj.start>=80) & ($instance_obj.end>=100)
			$instance_obj.end:=100
		Else 
			$instance_obj.end:=$instance_obj.end+1
		End if 
		
		
		CALL FORM:C1391($winTargetRef_l;"AJUI_CPBdrawSVG";$instance_obj)
		DELAY PROCESS:C323(Current process:C322;$delay_r)
		$run_barberShop_b:=AJUI_StorageHandler ($instance_obj.cpb.bar.pictureFormObjName)  // flag to stop the barbershop
		
	End while 
Else 
	CALL FORM:C1391($winTargetRef_l;"AJUI_CPBdrawSVG";$instance_obj)
End if 
