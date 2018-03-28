@ECHO OFF

SET url=https://api.route4me.com/api.v4/territory.php
SET apikey=11111111111111111111111111111111
SET addresses=1

:: The example refers to the process of getting the territory zones from an user's account.

ECHO ON
curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%"

timeout /t 30