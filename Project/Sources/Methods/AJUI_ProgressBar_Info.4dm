//%attributes = {"invisible":true,"shared":true,"lang":"en"}
  // AJUI_ProgressBar_Info ( ) -> return
  //
  // return : (text) (return) version
  //
  // Show the version info of the component

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 17.06.19, 15:48:43
	  // ----------------------------------------------------
	  // Method: AJUI_ProgressBar_Info
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0)

$version_t:="1.1.1-Build21"  // Fri, 26 Jun 2020 12:34:55 GMT

$0:="AJUI ProgressBar (v18) : "+$version_t