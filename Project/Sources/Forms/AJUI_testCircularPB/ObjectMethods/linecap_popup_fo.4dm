$linecap_popup_fo_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"linecap_popup_fo")
$cbpBarLinecap_fo_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"cbpBarLinecap_fo")
$evt:=Form event code:C388
Case of 
	: ($evt=On Load:K2:1)
		$linecap_popup_fo_ptr->:=1
	: ($evt=On Data Change:K2:15)
		Form:C1466.mycpb.CPBBarLinecap($linecap_popup_fo_ptr->{$linecap_popup_fo_ptr->})
		HDI_drawItCircularPB 
End case 
