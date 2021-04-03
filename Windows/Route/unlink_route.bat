@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=34171F062292E3CBEB163FFE281464A9

ECHO ON

:: The example refers to the process of unlinking a route from master optimization.

curl -o unlink_route_RESPONSE.json -g -k -X PUT -H "Content-Type: application/json" -d "@unlink_route_data.json" "%url%?route_id=%routeid%&api_key=%apikey%"

timeout /t 30