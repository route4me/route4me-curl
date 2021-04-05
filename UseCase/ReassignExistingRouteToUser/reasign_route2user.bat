@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php

SET apikey=11111111111111111111111111111111
SET routeid=4F9A4259F7C80127349ED8BB7F62A9E9

ECHO ON

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/json" -d "@reassign_route2user_data.json" "%url%?route_id=%routeid%&api_key=%apikey%"

timeout /t 30