@ECHO OFF
SET url=https://www.route4me.com/api.v4/territory.php
SET apikey=11111111111111111111111111111111
SET terid=02ACC3A8A552A5F2F0C09E6839DBB761

ECHO ON
curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%&territory_id=%terid%"

timeout /t 30