//%attributes = {"invisible":true,"preemptive":"capable"}
// AJUI_CPBanimationHandler ( $instance_obj ) 
//
// $instance_obj : (object) instance of a CPB
//
// This method will handle the transition between old and current percent value

If (False:C215)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 29.05.19, 08:58:53
	// ----------------------------------------------------
	// Method: AJUI_CPBanimationHandler
	// Description
	// 
	//
	// ----------------------------------------------------
End if 

C_OBJECT:C1216($1;$instance_obj)
C_REAL:C285($speed_r;$delay_r;$percent_r;$previousPercent_r)
C_TEXT:C284($workerName_t)

$instance_obj:=$1
$speed_r:=$instance_obj.cpb.bar.speed
$delay_r:=$speed_r*1
$percent_r:=$instance_obj.cpb.percent.value.current

If ($instance_obj.cpb.percent.animated)
	
	If ($instance_obj.cpb.percent.value.previous=Null:C1517)
		$previousPercent_r:=0
	Else 
		$previousPercent_r:=$instance_obj.cpb.percent.value.previous
	End if 
	
	
	If ($previousPercent_r>$percent_r)
		For ($i;$previousPercent_r;$percent_r;-1)
			$instance_obj.cpb.percent.value.current:=$i
			
			
			AJUI_CPBdraw($instance_obj)
			DELAY PROCESS:C323(Current process:C322;$delay_r)
		End for 
	Else 
		For ($i;$previousPercent_r;$percent_r;1)
			$instance_obj.cpb.percent.value.current:=$i
			AJUI_CPBdraw($instance_obj)
			DELAY PROCESS:C323(Current process:C322;$delay_r)
		End for 
	End if 
End if 
// to make sure that the bar is completely drawn
$instance_obj.cpb.percent.value.current:=$percent_r
AJUI_CPBdraw($instance_obj)
