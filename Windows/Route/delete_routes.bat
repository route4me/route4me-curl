@ECHO OFF
SET url=https://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET "routeid=270CB108F227AD6E11827FC08EE4E2D7,C340E3F6AF28E20EFAE0FBE51759C338"

ECHO ON

:: Example demonstrates the process of deleting specified routes by ids sent with HTTP DELETE data

curl -o file1.txt -g -k -X DELETE "%url%?api_key=%apikey%&route_id=%routeid%" 

timeout /t 30