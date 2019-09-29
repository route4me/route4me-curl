@ECHO OFF

SET url=https://api.route4me.com/api.v3/route/reoptimize_2.php
SET apikey=11111111111111111111111111111111
SET routeid=CA902292134DBC134EAF8363426BD247

:: The example refers to the process of resequencing all addresses inside a route.

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?api_key=%apikey%&route_id=%routeid%&disable_optimization=0&optimize=Distance;"

timeout /t 30