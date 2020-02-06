//%attributes = {"invisible":true}
C_TEXT:C284($svg_t)

$cornerRadius_l:=10
$width_l:=0
$height_l:=0
$border_l:=0
$bar_t:=""
$background_t:=""

$svg_t:="<svg>\r"\
+"<defs>\r"\
+"<linearGradient id=\"progressGradient\"gradientUnits=\"userSpaceOnUse\"x1=\"0%\"y1=\"0%\"x2=\"100%\"y2=\"0%\">\r"\
+"<stop stop-color=\"#376EA6\"offset=\"0\"/>\r"\
+"<stop stop-color=\"#8233A4\"offset=\"0.5\"/>\r"\
+"<stop stop-color=\"#B34646\"offset=\"1\"/>\r"\
+"</linearGradient>\r"\
+"<filter id=\"insetShadow\"filterunits=\"userSpaceOnUse\"x1=\"0%\"y1=\"0%\"x2=\"100%\"y2=\"0%\">\r"\
+"<feFlood flood-color=\"#000\"flood-opacity=\"1\"></feFlood>\r"\
+"<feComposite in2=\"SourceGraphic\"operator=\"xor\"></feComposite>\r"\
+"<feGaussianBlur stdDeviation=\"2\"></feGaussianBlur>\r"\
+"<feOffset dx=\"0\"dy=\"0\"result=\"offsetblur\"></feOffset>\r"\
+"<feFlood flood-color=\"#000\"flood-opacity=\"1\"></feFlood>\r"\
+"<feComposite in2=\"offsetblur\"operator=\"atop\"></feComposite>\r"\
+"<feComposite in2=\"SourceGraphic\"operator=\"in\"></feComposite>\r"\
+"<feMerge>\r"\
+"<feMergeNode in=\"SourceGraphic\"></feMergeNode>\r"\
+"<feMergeNode></feMergeNode>\r"\
+"</feMerge>\r"\
+"</filter>\r"\
+"</defs>\r"\
+"<path id=\"container\"\r"\
+"d=\"M10,0 L190,0 A1,1 0 1 1 190,20 L10,20 A1,1 0 1 1 10,0 z\"\r"\
+"fill=\"#fff\"filter=\"url(#insetShadow)\"stroke-width=\"0\"stroke=\"#CCC\"/>\r"\
+"<path id=\"bar\"\r"\
+"d=\"M10,5 L50,5 A1,1 0 1 1 50,15 L10,15 A1,1 0 1 1 10,5 z\"\r"\
+"fill=\"url(#progressGradient)\"/>\r"\
+"</svg>\r"