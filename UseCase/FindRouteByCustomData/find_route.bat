@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET query=cargo

ECHO ON
curl -o file1.txt -g -k -X GET "%url%?api_key=%apikey%&query=%query%" 

timeout /t 30