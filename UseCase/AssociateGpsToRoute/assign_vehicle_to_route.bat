@ECHO OFF
SET url=http://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=CEF9073F2C7BD79D967895A88E07F863

ECHO ON

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@assign_vehicle_to_route_data.json" "%url%?route_id=%routeid%&api_key=%apikey%"

timeout /t 30