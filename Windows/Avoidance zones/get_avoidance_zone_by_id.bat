@ECHO OFF

SET url=https://api.route4me.com/api.v4/avoidance.php
SET apikey=11111111111111111111111111111111
SET terid=02ACC3A8A552A5F2F0C09E6839DBB761

:: The example refers to the process of getting an avoidance zone by sending the avoidance zone ID.

ECHO ON
curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%&territory_id=%terid%"

timeout /t 30
