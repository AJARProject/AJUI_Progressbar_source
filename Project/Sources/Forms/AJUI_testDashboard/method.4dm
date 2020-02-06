$evt:=Form event code:C388
Case of 
		
	: ($evt=On Load:K2:1)
		
		Form:C1466.mypb1:=New object:C1471
		Form:C1466.mypb1:=New AJUI_ProgressBar 
		Form:C1466.mypb1.PBAreaHeight(20)
		Form:C1466.mypb1.PBAreaWidth(400)
		Form:C1466.mypb1.PBPercentValue(0)
		Form:C1466.mypb1.PBTitle("Step 0/3")
		Form:C1466.mypb1.PBActivateAnimation(False:C215)
		Form:C1466.mypb1.PBPictFormObjName("PB_fo1")
		Form:C1466.mypb1.LaunchProgressBar()
		
		Form:C1466.mycpb1:=New object:C1471
		Form:C1466.mycpb1:=New AJUI_CircularProgressBar 
		  //Form.mycpb1.CPBExternalRadius(70)
		Form:C1466.mycpb1.CPBPercentValue(0)
		Form:C1466.mycpb1.CPBActivateAnimation(True:C214)
		Form:C1466.mycpb1.CPBPictFormObjName("circularPB_fo1")
		Form:C1466.mycpb1.LaunchCircularProgressBar()
		
		Form:C1466.mycpb2:=New object:C1471
		Form:C1466.mycpb2:=New AJUI_CircularProgressBar 
		  //Form.mycpb2.CPBExternalRadius(70)
		Form:C1466.mycpb1.CPBActivateAnimation(True:C214)
		Form:C1466.mycpb2.CPBPercentValue(0)
		Form:C1466.mycpb2.CPBActivateAnimation(True:C214)
		Form:C1466.mycpb2.CPBPictFormObjName("circularPB_fo2")
		Form:C1466.mycpb2.LaunchCircularProgressBar()
		
		Form:C1466.mycpb3:=New object:C1471
		Form:C1466.mycpb3:=New AJUI_CircularProgressBar 
		  //Form.mycpb3.CPBExternalRadius(70)
		Form:C1466.mycpb3.CPBActivateAnimation(True:C214)
		Form:C1466.mycpb3.CPBPercentValue(0)
		Form:C1466.mycpb3.CPBPictFormObjName("circularPB_fo3")
		Form:C1466.mycpb3.LaunchCircularProgressBar()
		
		
	: ($evt=On Close Box:K2:21)
		
		Form:C1466.mypb1.StopPBProcess()
		Form:C1466.mycpb1.StopCPBProcess()
		Form:C1466.mycpb2.StopCPBProcess()
		Form:C1466.mycpb3.StopCPBProcess()
		CANCEL:C270
		
		
End case 