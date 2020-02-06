//%attributes = {"invisible":true}
  // Utl_fontStyle2Constant ( param1 { ; param2 } ) -> return
  //
  // param1 : (text) description
  // param2 : (text) (optional) description
  // return : (text) (return) return value
  //
  // short_description

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 23.05.19, 09:24:05
	  // ----------------------------------------------------
	  // Method: Utl_fontStyle2Constant
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($1;$fontStyle)
C_LONGINT:C283($0)
$fontStyle:=$1

Case of 
	: ($fontStyle="")
		$0:=0
	: ($fontStyle="Bold")
		$0:=1
	: ($fontStyle="Italic")
		$0:=2
	: ($fontStyle="Underline")
		$0:=4
	: ($fontStyle="Strikethrough")
		$0:=8
	Else 
		$0:=0
End case 
