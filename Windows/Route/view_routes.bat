@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting limited number of routes from an user's account.

ECHO ON
curl -o file1.txt -g -k -X GET "%url%?api_key=%apikey%&limit=20&offset=0" 

timeout /t 30