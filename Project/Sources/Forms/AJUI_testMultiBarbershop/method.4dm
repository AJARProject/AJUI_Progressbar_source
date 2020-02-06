$evt:=Form event code:C388
Case of 
		
	: ($evt=On Load:K2:1)
		
		Form:C1466.mypb1:=New object:C1471
		Form:C1466.mypb1:=New AJUI_ProgressBar 
		Form:C1466.mypb1.PBAreaHeight(20)
		Form:C1466.mypb1.PBTitle("Process 1")
		Form:C1466.mypb1.PBAreaWidth(400)
		Form:C1466.mypb1.PBPictFormObjName("PB_fo1")
		
		
		Form:C1466.mypb2:=New object:C1471
		Form:C1466.mypb2:=New AJUI_ProgressBar 
		Form:C1466.mypb2.PBAreaHeight(20)
		Form:C1466.mypb2.PBTitle("Process 2")
		Form:C1466.mypb2.PBAreaWidth(400)
		Form:C1466.mypb2.PBPictFormObjName("PB_fo2")
		
		
		Form:C1466.mypb3:=New object:C1471
		Form:C1466.mypb3:=New AJUI_ProgressBar 
		Form:C1466.mypb3.PBAreaHeight(20)
		Form:C1466.mypb3.PBTitle("Process 3")
		Form:C1466.mypb3.PBAreaWidth(400)
		Form:C1466.mypb3.PBPictFormObjName("PB_fo3")
		
		
		
		
		
	: ($evt=On Close Box:K2:21)
		
		Form:C1466.mypb1.StopPBProcess()
		Form:C1466.mypb2.StopPBProcess()
		Form:C1466.mypb3.StopPBProcess()
		
		CANCEL:C270
		
		
End case 