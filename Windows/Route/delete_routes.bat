@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET "routeid=D924D95010E517AA43755636B0C98045,EAEED381ACFC398C69B24B8CEA7708D9"

ECHO ON

:: The example refers to the process of removing the specified routes by sending their IDs with HTTP DELETE method.

curl -o file1.txt -g -k -X DELETE "%url%?api_key=%apikey%&route_id=%routeid%" 

timeout /t 30