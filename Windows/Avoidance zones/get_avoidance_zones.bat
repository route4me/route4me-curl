@ECHO OFF

SET url=https://www.route4me.com/api.v4/avoidance.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting all avoidance zones from an user account.
ECHO ON
curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%"

timeout /t 30
