//%attributes = {"invisible":true,"preemptive":"capable"}
  // AJUI_PBdraw ( $instance_obj ) 
  //
  // $instance_obj : (object) instance of a PB
  //
  // This method launch the draw of the SVG and handle the barbershop process

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 23.05.19, 09:20:46
	  // ----------------------------------------------------
	  // Method: AJUI_PBdraw
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_OBJECT:C1216($1;$instance_obj)
C_LONGINT:C283($winTargetRef_l;$indice_l)
C_REAL:C285($speed_r;$delay_r)
C_BOOLEAN:C305($run_barberShop_b;$barberShop_b)
C_TEXT:C284($direction_t;$instanceName_t)

$instance_obj:=$1

$speed_r:=$instance_obj.bar.speed
$delay_r:=$speed_r*1
$winTargetRef_l:=$instance_obj.msc.windowRef
$barberShop_b:=$instance_obj.bar.isBarbershop
$instanceName_t:=$instance_obj.bar.pictureFormObjName

If ($barberShop_b)
	
	$indice_l:=0
	$instance_obj.bar.indice:=$indice_l
	$instance_obj.start:=0
	$direction_t:="right"
	$run_barberShop_b:=AJUI_StorageHandler ($instanceName_t)
	
	While ($run_barberShop_b)
		
		
		Case of 
			: ($direction_t="right")
				$indice_l:=$indice_l+1
			: ($direction_t="right2")
				$instance_obj.start:=$instance_obj.start+1
			: ($direction_t="left2")
				$instance_obj.start:=$instance_obj.start-1
			: ($direction_t="left")
				$indice_l:=$indice_l-1
			Else 
				
		End case 
		
		
		Case of 
			: ($direction_t="right") & ($indice_l>=100)
				$direction_t:="right2"
			: ($direction_t="right2") & ($instance_obj.start>=100)
				$direction_t:="left2"
			: ($direction_t="left2") & ($instance_obj.start<=0)
				$direction_t:="left"
			: ($direction_t="left") & ($indice_l<=0)
				$direction_t:="right"
			Else 
				
		End case 
		
		$instance_obj.bar.direction:=$direction_t
		$instance_obj.bar.indice:=$indice_l
		CALL FORM:C1391($winTargetRef_l;"AJUI_PBdrawSVG";$instance_obj)
		DELAY PROCESS:C323(Current process:C322;$delay_r)
		$run_barberShop_b:=AJUI_StorageHandler ($instanceName_t)  // flag to stop the barbershop
		
	End while 
	
	
Else 
	
	
	CALL FORM:C1391($winTargetRef_l;"AJUI_PBdrawSVG";$instance_obj)
	
End if 