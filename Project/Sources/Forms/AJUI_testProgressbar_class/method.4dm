$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		
		Form:C1466.progressbar:=AJUI_ProgressBar.new()
		
		Form:C1466.progressbar.animated(True:C214)
		Form:C1466.progressbar.name("AJUI_PBpict_container")
		
		Form:C1466.progressbar.value(50)
		HDI_setPB_percent
		
	: ($evt=On Data Change:K2:15)
		HDI_setPB_percent
		
	: ($evt=On Close Box:K2:21)
		Form:C1466.progressbar.abort()
		Form:C1466.progressbar.value(0)
		
		CANCEL:C270
		
End case 

