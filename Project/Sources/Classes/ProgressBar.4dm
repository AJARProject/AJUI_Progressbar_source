Class constructor
	
	AJUI_PB_Init(This:C1470)
	
	
Function height
	// ----------------------
	// Container
	// ----------------------
	// Getter and setter for the height of the progressbar
	
	// $1 : (longint) (optional) height
	// $0 : (longint) (return) current height
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_PBAreaHeight
	Else 
		AJUI_GetSet_PBAreaHeight($1)
	End if 
	
Function width
	// ----------------------
	// Container
	// ----------------------
	// Getter and setter for the width of the progressbar
	
	// $1 : (longint) (optional) width
	// $0 : (longint) (return) current width
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_PBAreaWidth
	Else 
		AJUI_GetSet_PBAreaWidth($1)
	End if 
	
Function backgroundColor
	// ----------------------
	// Container
	// ----------------------
	// Getter and setter for the background color of the progress area
	
	// $1 : (text) (optional) color
	// $0 : (text) (return) current BG color
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_PBBGColor
	Else 
		AJUI_GetSet_PBBGColor($1)
	End if 
	
	
Function bgColor
	// Alias for backgroundColor
	// ----------------------
	// Container
	// ----------------------
	// Getter and setter for the background color of the progress area
	
	// $1 : (text) (optional) color
	// $0 : (text) (return) current BG color
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_PBBGColor
	Else 
		AJUI_GetSet_PBBGColor($1)
	End if 
	
Function borderColor
	// ----------------------
	// Container
	// ----------------------
	// Getter and setter for the border color of the progress area
	
	// $1 : (text) (optional) color
	// $0 : (text) (return) current border color
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_PBBorderColor
	Else 
		AJUI_GetSet_PBBorderColor($1)
	End if 
	
Function borderSize
	// ----------------------
	// Container
	// ----------------------
	// Gettter and setter for the border size of the progress area
	
	// $1 : (longint) (optional) size
	// $0 : (longint) (return) current border size
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_PBBorderSize
	Else 
		AJUI_GetSet_PBBorderSize($1)
	End if 
	
Function cornerRadius
	// ----------------------
	// Container
	// ----------------------
	// Getter and setter for the value of the corner radius of the progress area
	
	// $1 : (longint) (optional) corner radius
	// $0 : (longint) (return) current corner radius
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_PBCornerRadius
	Else 
		AJUI_GetSet_PBCornerRadius($1)
	End if 
	
Function windowColor
	// ----------------------
	// SVG Area
	// ----------------------
	// Getter and setter for the window background color
	
	// $1 : (text) (optional) color
	// $0 : (text) (return) current window BG color
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_PBWindowColor
	Else 
		AJUI_GetSet_PBWindowColor($1)
	End if 
	
Function textPosition
	// ----------------------
	// Text
	// ----------------------
	// Getter and setter for the text position
	
	// $1 : (text) (optional) position
	// $0 : (text) (return) current text position
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_PBTextPosition
	Else 
		AJUI_GetSet_PBTextPosition($1)
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
		$0:=AJUI_GetSet_PBTitle
	Else 
		AJUI_GetSet_PBTitle($1)
	End if 
	
Function barColor
	// ----------------------
	// Bar
	// ----------------------
	// Getter and setter for the bar color
	
	// $1 : (text) (optional) color
	// $0 : (text) (return) current bar color
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_PBBarColor
	Else 
		AJUI_GetSet_PBBarColor($1)
	End if 
	
Function barOffset
	// ----------------------
	// Bar
	// ----------------------
	// Getter and setter for the offset of the bar
	
	// $1 : (longint) (optional) offset
	// $0 : (longint) (return) current bar offset
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_PBBarOffset
	Else 
		AJUI_GetSet_PBBarOffset($1)
	End if 
	
Function barSpeed
	// ----------------------
	// Bar
	// ----------------------
	// Getter and setter for the speed of the animations
	
	// $1 : (real) (optional) speed
	// $0 : (real) (return) current speed
	
	C_REAL:C285($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_PBBarSpeed
	Else 
		AJUI_GetSet_PBBarSpeed($1)
	End if 
	
Function name
	// ----------------------
	// Bar
	// ----------------------
	// Getter and setter for the name of the picture form object who receive the svg
	
	// $1 : (text) (optional) picture form object name
	// $0 : (text) (return) current form object
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_PBPictFormObjName
	Else 
		AJUI_GetSet_PBPictFormObjName($1)
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
		$0:=AJUI_GetSet_PBAnimation
	Else 
		AJUI_GetSet_PBAnimation($1)
	End if 
	
Function showText
	// ----------------------
	// Percent
	// ----------------------
	// Getter and setter to show/hide the the title 
	
	// $1 : (boolean) (optional) show/hide
	// $0 : (boolean) (return) show title ?
	
	C_BOOLEAN:C305($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_GetSet_PBPercentDisplay
	Else 
		AJUI_GetSet_PBPercentDisplay($1)
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
		$0:=AJUI_GetSet_PBTextFontColor
	Else 
		AJUI_GetSet_PBTextFontColor($1)
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
		$0:=AJUI_GetSet_PBTextFontColor
	Else 
		AJUI_GetSet_PBTextFontColor($1)
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
		$0:=AJUI_GetSet_PBTextFontName
	Else 
		AJUI_GetSet_PBTextFontName($1)
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
		$0:=AJUI_GetSet_PBTextFontSize
	Else 
		AJUI_GetSet_PBTextFontSize($1)
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
		$0:=AJUI_GetSet_PBTextFontStyle
	Else 
		AJUI_GetSet_PBTextFontStyle($1)
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
		$0:=AJUI_GetSet_PBPercentValue
	Else 
		AJUI_GetSet_PBPercentValue($1)
		// TODO: automatically draw the progress when setting a value
		//AJUI_LaunchPBProcess
	End if 
	
Function draw
	// ----------------------
	// Process
	// ----------------------
	// Launcher method to draw the progressbar
	
	// $1 : (longint) (optional) form window ref
	
	
	C_LONGINT:C283($1)
	
	If (Count parameters:C259=0)
		AJUI_LaunchPBProcess
	Else 
		AJUI_LaunchPBProcess($1)
	End if 
	
Function barberShop
	// ----------------------
	// Process
	// ----------------------
	// Launcher method to draw the Barbershop
	
	// $1 : (longint) (optional) form window ref
	
	
	C_LONGINT:C283($1)
	
	If (Count parameters:C259=0)
		AJUI_LaunchBarberShopProcess
	Else 
		AJUI_LaunchBarberShopProcess($1)
	End if 
	
Function abort
	// ----------------------
	// Process
	// ----------------------
	// This method will stop the PB process and kill related workers
	
	AJUI_PBStopProcess