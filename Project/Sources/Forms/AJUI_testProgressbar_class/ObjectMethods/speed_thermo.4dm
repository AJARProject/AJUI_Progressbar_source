

$evt:=Form event code:C388
Case of 
	: ($evt=On Clicked:K2:4)
		If (Form:C1466.progressbar.bar.speed<=0)
			Form:C1466.progressbar.PBBarSpeed(1)
		End if 
		
		If (Form:C1466.progressbar.bar.speed>10)
			Form:C1466.progressbar.PBBarSpeed(10)
		End if 
End case 
