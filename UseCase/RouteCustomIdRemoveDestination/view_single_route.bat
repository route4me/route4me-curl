@ECHO OFF
SET url=https://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=CA902292134DBC134EAF8363426BD247

ECHO ON

curl -o file1.txt -g -k -X GET "%URL%?route_id=%routeid%&api_key=%apikey%" 

timeout /t 30