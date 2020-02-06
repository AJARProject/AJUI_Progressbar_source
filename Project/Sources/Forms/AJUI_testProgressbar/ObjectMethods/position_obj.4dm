$self:=OBJECT Get pointer:C1124(Object current:K67:2)

$evt:=Form event code:C388
Case of 
		
	: ($evt=On Load:K2:1)
		
		ARRAY TEXT:C222($self->;0)
		APPEND TO ARRAY:C911($self->;"top")
		APPEND TO ARRAY:C911($self->;"middle")
		APPEND TO ARRAY:C911($self->;"bottom")
		
		$self->:=2
		
	: ($evt=On Data Change:K2:15)
		Form:C1466.progressbar.PBTextPosition($self->{$self->})
		HDI_setPB_percent 
		
	: ($evt=On Clicked:K2:4)
		Form:C1466.progressbar.PBTextPosition($self->{$self->})
		HDI_setPB_percent 
		
End case 
