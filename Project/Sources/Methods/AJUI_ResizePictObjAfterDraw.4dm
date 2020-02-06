//%attributes = {"invisible":true}
  // AJUI_ResizePictObjAfterDraw ( $pictObjectName_t; $pict) -> return
  //
  // $pictObjectName_t : (text) name of the picture form object
  // $pict : (picture)  svg result
  //
  // This method resize the picture form object

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 27.05.19, 10:21:24
	  // ----------------------------------------------------
	  // Method: AJUI_ResizePictObjAfterDraw
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($1;$pictObjectName_t)
C_PICTURE:C286($2;$pict)

C_LONGINT:C283($pictHeight_l;$pictWidth_l)
C_LONGINT:C283($top_l;$left_l;$right_l;$bottom_l)

$pictObjectName_t:=$1
$pict:=$2

PICTURE PROPERTIES:C457($pict;$pictWidth_l;$pictHeight_l)

OBJECT GET COORDINATES:C663(*;$pictObjectName_t;$left_l;$top_l;$right_l;$bottom_l)

  //resizing
$right_l:=$left_l+$pictWidth_l
$bottom_l:=$top_l+$pictHeight_l

OBJECT SET COORDINATES:C1248(*;$pictObjectName_t;$left_l;$top_l;$right_l;$bottom_l)

