@ECHO OFF

SET url=https://api.route4me.com/api.v4/avoidance.php
SET apikey=11111111111111111111111111111111
SET terid1=083F0E34A2271FCAFA5476A364F32B4E

:: The example refers to the process of removing an avoidance zone from an user account.

ECHO ON

curl -o file1.txt -g -k -X DELETE "%url%?api_key=%apikey%&territory_id=%terid1%"

timeout /t 30