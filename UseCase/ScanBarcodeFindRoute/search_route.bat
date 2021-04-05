@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET query=ipad-air-2-12345977

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?&api_key=%apikey%&query=%query%"

timeout /t 30