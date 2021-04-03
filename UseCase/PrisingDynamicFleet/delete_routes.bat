@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET "routeid=900320428AF484F243EEEEA55561D425"

ECHO ON

:: Example demonstrates the process of deleting specified routes by ids sent with HTTP DELETE data

curl -o file1.txt -g -k -X DELETE "%url%?api_key=%apikey%&route_id=%routeid%" 

timeout /t 30