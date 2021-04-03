@ECHO OFF

SET url0=https://www.route4me.com/actions/authenticate.php
SET url=https://www.route4me.com/api/track/view_user_locations.php
SET apikey=11111111111111111111111111111111
SET email=dan@novapulsar.com

ECHO ON

curl -o file1.txt -k -g -X POST -H "Content-Type: multipart/form-data;" -F "strEmail=%email%" -F "strPassword=123456" -F "format=json" "%url0%?api_key=%apikey%"

START /WAIT curl -o file2.txt -g -X GET -k "%url%?api_key=%apikey%&query=Gaspar"

timeout /t 30