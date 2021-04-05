@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php

SET apikey=11111111111111111111111111111111
SET routeid=9B61D1FC0E3943BEE7FF0948513CAD08

ECHO ON

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/json" -d "@assign_driver_to_route_data.json" "%url%?route_id=%routeid%&api_key=%apikey%"

timeout /t 30