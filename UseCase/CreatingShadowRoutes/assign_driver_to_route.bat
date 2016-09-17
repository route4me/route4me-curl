@ECHO OFF

SET url=http://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=4F9A4259F7C80127349ED8BB7F62A9E9

ECHO ON

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@assign_driver_to_route_data.json" "%url%?route_id=%routeid%&api_key=%apikey%"

timeout /t 30