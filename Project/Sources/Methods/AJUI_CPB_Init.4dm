//%attributes = {"invisible":true}
  // AJUI_CircularProgressBar_Init ( $instance_obj ) 
  //
  // $instance_obj : (object) instance of a CPB
  //
  // Init the properties of the circular progressbar into the object in parameter

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 23.05.19, 09:20:20
	  // ----------------------------------------------------
	  // Method: AJUI_CircularProgressBar_Init
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_OBJECT:C1216($1;$instance_obj)

$instance_obj:=$1

If ($instance_obj.cpb=Null:C1517)
	$instance_obj.cpb:=New object:C1471
End if 

  //background circular progressbar
$instance_obj.cpb.radius:=100  // external radius
$instance_obj.cpb.autoRadiusSize:=True:C214  //auto size

$instance_obj.cpb.bgBar:=New object:C1471  // background bar properties
$instance_obj.cpb.svgArea:=New object:C1471  // svg area properties
$instance_obj.cpb.bar:=New object:C1471  // bar properties
$instance_obj.cpb.percent:=New object:C1471  // percent and display properties
$instance_obj.cpb.text:=New object:C1471  // text and display properties
$instance_obj.cpb.msc:=New object:C1471  //miscellaneous

  // msc definition
$instance_obj.cpb.msc.windowRef:=0

  // Background Bar definition
$instance_obj.cpb.bgBar.width:=16
$instance_obj.cpb.bgBar.color:="lightgray"
$instance_obj.cpb.bgBar.fillColor:="none"

  //progressBar definition
$instance_obj.cpb.bar.pictureFormObjName:=""
$instance_obj.cpb.bar.width:=12
$instance_obj.cpb.bar.color:="#3B88FD:80"  // default color and opacity
$instance_obj.cpb.bar.speed:=1  // speed 1sec / 60 %
$instance_obj.cpb.bar.linecap:="butt"  // butt, round, square
$instance_obj.cpb.bar.isBarbershop:=False:C215  // default simple progressbar

  //text definition
$instance_obj.cpb.text.title:="$value_l"
$instance_obj.cpb.text.subtitle:="%"

  //percent definition
$instance_obj.cpb.percent.animation:=False:C215
$instance_obj.cpb.percent.display:=True:C214
$instance_obj.cpb.percent.font:=New object:C1471
$instance_obj.cpb.percent.font.name:="Helvetica,Arial"
$instance_obj.cpb.percent.font.size:=35
$instance_obj.cpb.percent.font.color:="gray:80"
$instance_obj.cpb.percent.font.style:="bold"  // 0=Plain, 1=Bold, 2=Italic, 4=Underline, 8 = Strikethrough
$instance_obj.cpb.percent.value:=New object:C1471  // percent values
If ($instance_obj.cpb.percent.value.previous=Null:C1517)
	$instance_obj.cpb.percent.value.previous:=0
Else 
	$instance_obj.cpb.percent.value.previous:=$instance_obj.cpb.percent
End if 
$instance_obj.cpb.percent.value.current:=0

  // SVG Area definition
$instance_obj.cpb.svgArea.widthSVG_l:=$instance_obj.cpb.bgBar.width+10
$instance_obj.cpb.svgArea.heightSVG_l:=$instance_obj.cpb.bgBar.width+10
$instance_obj.cpb.svgArea.positionX:=5
$instance_obj.cpb.svgArea.positionY:=5



  // barbershop definition
If (Storage:C1525.barbershop.run=Null:C1517)
	Use (Storage:C1525)
		Storage:C1525.barbershop:=New shared object:C1526("run";New shared object:C1526)
	End use 
End if 

