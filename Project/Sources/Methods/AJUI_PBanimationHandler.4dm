//%attributes = {"invisible":true,"preemptive":"capable"}
// AJUI_PBanimationHandler ( $instance_obj ) 
//
// $instance_obj : (object) instance of a PB
//
// This method will handle the transition between old and current percent value

If (False:C215)
	// ----------------------------------------------------
	// User name (OS): Maurice Inzirillo
	// Date and time: 23.05.19, 09:20:04
	// ----------------------------------------------------
	// Method: AJUI_PBanimationHandler
	// Description
	// 
	//
	// ----------------------------------------------------
End if 


C_OBJECT:C1216($1;$instance_obj)
C_REAL:C285($speed_r;$delay_r;$percent_r;$previousPercent_r)
C_TEXT:C284($workerName_t)

$instance_obj:=$1
$speed_r:=$instance_obj.bar.speed
$delay_r:=$speed_r*1
$percent_r:=$instance_obj.percent.value.current

If ($instance_obj.percent.animated)
	
	If ($instance_obj.percent.value.previous=Null:C1517)
		$previousPercent_r:=0
	Else 
		$previousPercent_r:=$instance_obj.percent.value.previous
	End if 
	
	
	If ($previousPercent_r>$percent_r)
		For ($i;$previousPercent_r;$percent_r;-1)
			$instance_obj.percent.value.current:=$i
			AJUI_PBdraw($instance_obj)
			DELAY PROCESS:C323(Current process:C322;$delay_r)
		End for 
	Else 
		For ($i;$previousPercent_r;$percent_r;1)
			$instance_obj.percent.value.current:=$i
			AJUI_PBdraw($instance_obj)
			DELAY PROCESS:C323(Current process:C322;$delay_r)
		End for 
	End if 
End if 
// to make sure that the bar is completely drawn
$instance_obj.percent.value.current:=$percent_r
AJUI_PBdraw($instance_obj)
