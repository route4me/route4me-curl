@ECHO OFF

SET url=http://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=00B929FD5BC38668AF4038F34CF7EE43

ECHO ON

:: The example refers to the process of updating a route by sending parameters with HTTP PUT method.

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@update_route_data.json" "%url%?route_id=%routeid%&api_key=%apikey%"

timeout /t 30