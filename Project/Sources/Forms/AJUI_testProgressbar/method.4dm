

$evt:=Form event code:C388
Case of 
		
	: ($evt=On Load:K2:1)
		Form:C1466.progressbar:=New object:C1471
		
		Form:C1466.progressbar:=New AJUI_ProgressBar 
		
		Form:C1466.progressbar.PBActivateAnimation(True:C214)
		Form:C1466.progressbar.PBPercentValue(50)
		Form:C1466.progressbar.PBPictFormObjName("AJUI_PBpict_container")
		
		
		HDI_setPB_percent 
	: ($evt=On Data Change:K2:15)
		HDI_setPB_percent 
	: ($evt=On Close Box:K2:21)
		
		
		Form:C1466.progressbar.StopPBProcess()
		Form:C1466.progressbar.PBPercentValue(0)
		
		CANCEL:C270
		
		
End case 

