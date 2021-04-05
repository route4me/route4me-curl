@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=9154712DCDC62A1BFE934F0B4363599C

ECHO ON

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/json" -d "@duplicate_route_same_optimization_data.json" "%url%?api_key=%apikey%&route_id=%routeid%"

timeout /t 30
