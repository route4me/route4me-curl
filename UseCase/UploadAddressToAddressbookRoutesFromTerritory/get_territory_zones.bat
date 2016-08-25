@ECHO OFF
SET url=https://www.route4me.com/api.v4/territory.php
SET apikey=11111111111111111111111111111111

ECHO ON
curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%"

timeout /t 30