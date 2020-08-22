Class constructor
	
	AJUI_CPB_Init(This:C1470)
	
	
Function radius
	// ----------------------
	// Circular bar
	// ----------------------
	// Getter and setter for the size of the radius of the CPB
	
	// $1 : (longint) (optional) radius size
	// $0 : (longint) (return) current radius size
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBRadius
	Else 
		AJUI_GetSet_CPBRadius($1)
	End if 
	
Function sizeAuto
	// ----------------------
	// Circular bar
	// ----------------------
	// Getter and setter to activate/inactivate the calculation of the radius based on the form object size
	
	// $1 : (boolean) (optional) activate/inactivate
	// $0 : (boolean) (return) auto sized radius ?
	
	C_BOOLEAN:C305($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBRadiusAutoSize
	Else 
		AJUI_GetSet_CPBRadiusAutoSize($1)
	End if 
	
Function backgroundColor
	// ----------------------
	// Background bar
	// ----------------------
	// Gettter and setter for the background color of the bar
	
	// $1 : (text) (optional) color
	// $0 : (text) (return) current bar BG color
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBBackgroundColor
	Else 
		AJUI_GetSet_CPBBackgroundColor($1)
	End if 
	
Function bgColor
	// Alias for backgroundColor
	// ----------------------
	// Background bar
	// ----------------------
	// Gettter and setter for the background color of the bar
	
	// $1 : (text) (optional) color
	// $0 : (text) (return) current bar BG color
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBBackgroundColor
	Else 
		AJUI_GetSet_CPBBackgroundColor($1)
	End if 
	
Function fillColor
	// ----------------------
	// Background bar
	// ----------------------
	// Gettter and setter for the internal background color 
	
	// $1 : (text) (optional) color
	// $0 : (text) (return) current internal BG color
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBBackgroundFillCo
	Else 
		AJUI_GetSet_CPBBackgroundFillCo($1)
	End if 
	
	
Function backgroundWidth
	// ----------------------
	// Background bar
	// ----------------------
	// Getter and setter for the the width of the background
	
	// $1 : (longint) (optional) widht
	// $0 : (longint) (return) current BG width
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBBackgroundWidth
	Else 
		AJUI_GetSet_CPBBackgroundWidth($1)
	End if 
	
Function bgWidth
	// Alias for backgroundWidth
	// ----------------------
	// Background bar
	// ----------------------
	// Getter and setter for the the width of the background
	
	// $1 : (longint) (optional) widht
	// $0 : (longint) (return) current BG width
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBBackgroundWidth
	Else 
		AJUI_GetSet_CPBBackgroundWidth($1)
	End if 
	
Function title
	// ----------------------
	// Text
	// ----------------------
	// Getter and setter for the title label
	
	// $1 : (text) (optional) title
	// $0 : (text) (return) current title
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBTitle
	Else 
		AJUI_GetSet_CPBTitle($1)
	End if 
	
Function subtitle
	// ----------------------
	// Text
	// ----------------------
	// Getter and setter for the label of the subtitle
	
	// $1 : (text) (optional) subtitle
	// $0 : (text) (return) current subtitle
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBSubtitle
	Else 
		AJUI_GetSet_CPBSubtitle($1)
	End if 
	
Function barColor
	// ----------------------
	// ProgressBar
	// ----------------------
	// Getter and setter for the bar color
	
	// $1 : (text) (optional) color
	// $0 : (text) (return) current bar color
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBBarColor
	Else 
		AJUI_GetSet_CPBBarColor($1)
	End if 
	
Function lineCap
	// ----------------------
	// ProgressBar
	// ----------------------
	// Getter and setter for the shape of the bar linecap
	
	// $1 : (text) (optional) linecap
	// $0 : (text) (return) current linecap
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBBarLinecap
	Else 
		AJUI_GetSet_CPBBarLinecap($1)
	End if 
	
Function barSpeed
	// ----------------------
	// ProgressBar
	// ----------------------
	// Getter and setter for the speed of the animations
	
	// $1 : (real) (optional) speed
	// $0 : (real) (return) current speed
	
	C_REAL:C285($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBBarSpeed
	Else 
		AJUI_GetSet_CPBBarSpeed($1)
	End if 
	
Function width
	// ----------------------
	// ProgressBar
	// ----------------------
	// Getter and setter for the bar width
	
	// $1 : (longint) (optional) width
	// $0 : (longint) (return) current bar width
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBBarWidth
	Else 
		AJUI_GetSet_CPBBarWidth($1)
	End if 
	
Function name
	// ----------------------
	// ProgressBar
	// ----------------------
	// Getter and setter for the bar width
	
	// $1 : (text) (optional) picture form object name
	// $0 : (text) (return) current  form object
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBPictFormObjName
	Else 
		AJUI_GetSet_CPBPictFormObjName($1)
	End if 
	
Function animated
	// ----------------------
	// Percent
	// ----------------------
	// Getter and setter method to activate/inactivate the animation
	
	// $1 : (boolean) (optional) activate/inactivate
	// $0 : (boolean) (return) animation activated ?
	
	C_BOOLEAN:C305($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBAnimation
	Else 
		AJUI_GetSet_CPBAnimation($1)
	End if 
	
Function showText
	// ----------------------
	// Percent
	// ----------------------
	// Getter and setter to show/hide the the title and subtitle
	
	// $1 : (boolean) (optional) show/hide
	// $0 : (boolean) (return) show title and subtitle ?
	
	C_BOOLEAN:C305($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBPercentDisplay
	Else 
		AJUI_GetSet_CPBPercentDisplay($1)
	End if 
	
Function fontColor
	// ----------------------
	// Percent
	// ----------------------
	// Getter and setter for the font color
	
	// $1 : (text) (optional) color
	// $0 : (text) (return) current text color
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBTextFontColor
	Else 
		AJUI_GetSet_CPBTextFontColor($1)
	End if 
	
Function color
	// Alias for fontColor
	// ----------------------
	// Percent
	// ----------------------
	// Getter and setter for the font color
	
	// $1 : (text) (optional) color
	// $0 : (text) (return) current text color
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBTextFontColor
	Else 
		AJUI_GetSet_CPBTextFontColor($1)
	End if 
	
Function fontName
	// ----------------------
	// Percent
	// ----------------------
	// Getter and setter for the font name
	
	// $1 : (text) (optional) font name
	// $0 : (text) (return) current font name
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBTextFontName
	Else 
		AJUI_GetSet_CPBTextFontName($1)
	End if 
	
Function fontSize
	// ----------------------
	// Percent
	// ----------------------
	// Getter and setter for the font size
	
	// $1 : (longint) (optional) font size
	// $0 : (longint) (return) current font size
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBTextFontSize
	Else 
		AJUI_GetSet_CPBTextFontSize($1)
	End if 
	
Function fontStyle
	// ----------------------
	// Percent
	// ----------------------
	// Getter and setter for the font style
	
	// $1 : (text) (optional) font style
	// $0 : (text) (return) current font style
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBTextFontStyle
	Else 
		AJUI_GetSet_CPBTextFontStyle($1)
	End if 
	
Function value
	// ----------------------
	// Percent
	// ----------------------
	// Getter and Setter of the percent value for the bar
	
	// $1 : (real) (optional) value between 0 and 100
	// $0 : (real) (return) current percent value
	
	C_REAL:C285($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_CPBPercentValue
	Else 
		AJUI_GetSet_CPBPercentValue($1)
	End if 
	
Function draw
	// ----------------------
	// Process
	// ----------------------
	// Launcher method to draw the circular progressbar
	
	// $1 : (longint) (optional) form window ref
	
	
	C_LONGINT:C283($1)
	
	If (Count parameters:C259=0)
		AJUI_LaunchCPBProcess
	Else 
		AJUI_LaunchCPBProcess($1)
	End if 
	
Function barberShop
	// ----------------------
	// Process
	// ----------------------
	// Launcher method to draw the circular Barbershop
	
	// $1 : (longint) (optional) form window ref
	
	
	C_LONGINT:C283($1)
	
	If (Count parameters:C259=0)
		AJUI_LaunchCPBBarberShopProcess
	Else 
		AJUI_LaunchCPBBarberShopProcess($1)
	End if 
	
Function abort
	// ----------------------
	// Process
	// ----------------------
	// This method will stop the CPB process and kill related workers
	
	AJUI_CPBStopProcess