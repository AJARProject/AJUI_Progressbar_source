//%attributes = {"invisible":true,"shared":true}
  // New AJUI_CircularProgressBar ( ) -> return
  //
  // return : (text) (return) return CPB instance
  //
  // This method return an instance of a circular progressbar with the default values

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.05.19, 14:34:21
	  // ----------------------------------------------------
	  // Method: New AJUI_CircularProgressBar
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($0;$instance_obj)

$instance_obj:=New object:C1471

AJUI_CPB_Init ($instance_obj)
AJUI_CPB_InitFormulas ($instance_obj)

$0:=$instance_obj
