

$evt:=Form event code:C388
Case of 
		
	: ($evt=On Load:K2:1)
		
		Form:C1466.mycpb:=New object:C1471
		
		Form:C1466.mycpb:=New AJUI_CircularProgressBar 
		Form:C1466.mycpb.CPBActivateAnimation(True:C214)
		Form:C1466.mycpb.CPBPercentValue(50)
		Form:C1466.mycpb.CPBRadiusAutoSize(False:C215)
		
		Form:C1466.mycpb.CPBPictFormObjName("circularPB_fo")
		
		HDI_drawItCircularPB 
		
	: ($evt=On Data Change:K2:15)
		
		HDI_drawItCircularPB 
		
	: ($evt=On Close Box:K2:21)
		
		
		Form:C1466.mycpb.StopCPBProcess()
		CANCEL:C270
		
		
End case 


