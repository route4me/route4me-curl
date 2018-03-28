@ECHO OFF

SET url=http://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=F0C842829D8799067F9BF7A495076335
SET routedestid=174389214

:: The example refers to the process of resequencing a specified address inside a route.

ECHO ON

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@resequence_data.json" "%url%?route_id=%routeid%&route_destination_id=%routedestid%&api_key=%apikey%"

timeout /t 30