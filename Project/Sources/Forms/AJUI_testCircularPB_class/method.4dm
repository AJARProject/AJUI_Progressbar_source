

$evt:=Form event code:C388
Case of 
		
	: ($evt=On Load:K2:1)
		
		Form:C1466.mycpb:=New object:C1471
		
		Form:C1466.mycpb:=AJUI_CircularProgressBar.new()
		Form:C1466.mycpb.animated(True:C214)
		Form:C1466.mycpb.value(50)
		Form:C1466.mycpb.sizeAuto(False:C215)
		
		Form:C1466.mycpb.name("circularPB_fo")
		
		HDI_drawItCircularPB
		
	: ($evt=On Data Change:K2:15)
		
		HDI_drawItCircularPB
		
	: ($evt=On Close Box:K2:21)
		
		
		Form:C1466.mycpb.abort()
		CANCEL:C270
		
		
End case 


