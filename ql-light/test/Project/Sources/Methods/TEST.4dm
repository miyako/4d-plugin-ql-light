//%attributes = {}
C_TEXT:C284($path)
C_PICTURE:C286($thumbnail)
C_OBJECT:C1216($options)
OB SET:C1220($options;"scaleFactor";1;"width";2048;"height";2048)

  //when ql fails and we fallback to nsworkspace (icon), the size is 1024x1024

$path:=System folder:C487(Desktop:K41:16)+"1.key"

$json:=JSON Stringify:C1217($options)

$thumbnail:=QL Create thumbnail ($path;$json)  //returns tiff

PICTURE PROPERTIES:C457($thumbnail;$width;$height)

$options:=JSON Parse:C1218($json)

SET PICTURE TO PASTEBOARD:C521($thumbnail)