//%attributes = {"invisible":true}
  // Utl_fontAlignement2Constant ( param1 { ; param2 } ) -> return
  //
  // param1 : (text) description
  // param2 : (text) (optional) description
  // return : (text) (return) return value
  //
  // short_description

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 23.05.19, 09:23:53
	  // ----------------------------------------------------
	  // Method: Utl_fontAlignement2Constant
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($1;$fontAlignement)
C_LONGINT:C283($0)
$fontAlignement:=$1

Case of 
	: ($fontAlignement="Align left")
		$0:=2
	: ($fontAlignement="Center")
		$0:=3
	: ($fontAlignement="Align right")
		$0:=4
	: ($fontAlignement="Justify")
		$0:=5
	Else 
		$0:=2
End case 