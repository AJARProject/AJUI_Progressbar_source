//%attributes = {"invisible":true}
// AJUI_ProgressBar_Init ( $instance_obj ) 
//
// $instance_obj : (object) instance of a PB
//
// Init the properties of the  progressbar into the object in parameter

If (False:C215)
	// ----------------------------------------------------
	// User name (OS): Maurice Inzirillo
	// Date and time: 23.05.19, 09:23:15
	// ----------------------------------------------------
	// Method: AJUI_ProgressBar_Init
	// Description
	// 
	//
	// ----------------------------------------------------
End if 


C_OBJECT:C1216($1;$instance_obj)

$instance_obj:=$1



//init instance objects
$instance_obj.progressArea:=New object:C1471  // progress area properties
$instance_obj.svgArea:=New object:C1471  // svg area properties
$instance_obj.bar:=New object:C1471  // bar properties
$instance_obj.percent:=New object:C1471  // percent and display properties
$instance_obj.text:=New object:C1471  // text and display properties
$instance_obj.msc:=New object:C1471  //miscellaneous

// msc definition
$instance_obj.msc.windowRef:=0

// container definition
$instance_obj.progressArea.width:=360
$instance_obj.progressArea.height:=20
$instance_obj.progressArea.cornerRadius:=2
$instance_obj.progressArea.borderColor:="#3276DC"
$instance_obj.progressArea.backgroundColor:="none"
$instance_obj.progressArea.borderSize:=1

// SVG Area definition
$instance_obj.svgArea.widthSVG_l:=$instance_obj.progressArea.width+10
$instance_obj.svgArea.heightSVG_l:=$instance_obj.progressArea.height+10
$instance_obj.svgArea.positionX:=5
$instance_obj.svgArea.positionY:=5
$instance_obj.svgArea.windowBGColor:="white:0"

//text definition
$instance_obj.text.title:="$value_l %"
$instance_obj.text.position:="middle"

// bar definition
$instance_obj.bar.isBarbershop:=False:C215  // default simple progressbar
$instance_obj.bar.color:="#3B88FD:80"  // default color and opacity
$instance_obj.bar.speed:=1  // speed 1sec / 60 %
$instance_obj.bar.offset:=1.5
$instance_obj.bar.pictureFormObjName:=""  //default object name

// percent definition
$instance_obj.percent.animated:=False:C215
$instance_obj.percent.display:=True:C214
$instance_obj.percent.font:=New object:C1471
$instance_obj.percent.font.color:="black"
$instance_obj.percent.font.name:="Helvetica,Arial"
$instance_obj.percent.font.size:=12
$instance_obj.percent.font.style:="bold"
$instance_obj.percent.value:=New object:C1471  // percent values
If ($instance_obj.percent.value.previous=Null:C1517)
	$instance_obj.percent.value.previous:=0
Else 
	$instance_obj.percent.value.previous:=$instance_obj.percent
End if 
$instance_obj.percent.value.current:=0

// barbershop definition
If (Storage:C1525.barbershop.run=Null:C1517)
	Use (Storage:C1525)
		Storage:C1525.barbershop:=New shared object:C1526("run";New shared object:C1526)
	End use 
End if 