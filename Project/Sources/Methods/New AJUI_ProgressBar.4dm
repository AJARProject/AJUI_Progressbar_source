//%attributes = {"shared":true}
  // New AJUI_ProgressBar ( ) -> return
  //
  // return : (text) (return) return PB instance
  //
  // This method return an instance of a progressbar with the default values


If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.05.19, 14:33:24
	  // ----------------------------------------------------
	  // Method: New AJUI_ProgressBar
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($0;$instance_obj)

$instance_obj:=New object:C1471

AJUI_PB_Init ($instance_obj)
AJUI_PB_initFormulas ($instance_obj)

$0:=$instance_obj

