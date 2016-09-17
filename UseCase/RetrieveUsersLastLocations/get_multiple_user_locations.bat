@ECHO OFF

SET url=https://www.route4me.com/api/track/view_user_locations.php
SET apikey=11111111111111111111111111111111

ECHO ON

curl -o file1.txt -g -X GET -k "%url%?api_key=%apikey%&query=Gaspar"

timeout /t 30