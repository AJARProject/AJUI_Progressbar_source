C_POINTER:C301($self)
C_TEXT:C284($instanceName_t)

$self:=OBJECT Get pointer:C1124(Object current:K67:2)
$evt:=Form event code:C388
Case of 
	: ($evt=On Load:K2:1)
		$self->:=1
		OBJECT SET TITLE:C194($self->;"Launch BarberShop")
		OBJECT SET RGB COLORS:C628($self->;0x00FF;Background color none:K23:10)
		
	: ($evt=On Clicked:K2:4)
		$instanceName_t:=Form:C1466.progressbar.PBPictFormObjName()
		
		If (Storage:C1525.barbershop.run[$instanceName_t])
			OBJECT SET TITLE:C194($self->;"Launch BarberShop")
			OBJECT SET RGB COLORS:C628($self->;0x00FF;Background color none:K23:10)
			Form:C1466.progressbar.StopPBProcess()
		Else 
			OBJECT SET TITLE:C194($self->;"Stop BarberShop")
			OBJECT SET RGB COLORS:C628($self->;0x00FF0000;Background color none:K23:10)
			Form:C1466.progressbar.PBTitle("Loading ...")
			Form:C1466.progressbar.LaunchBarberShop()
		End if 
		
End case 

