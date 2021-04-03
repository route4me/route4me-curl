@ECHO OFF

SET url=https://www.route4me.com/api.v4/address.php
SET apikey=11111111111111111111111111111111
SET routeid=DD376C7148E7FEE36CFABE2BD9978BDD
SET routedestinationid=183045808

ECHO ON

:: is_departed=1 means address was departed, is_departed=0 --- not departed

curl -o file1.txt -k -g -X PUT -H "Content-Type: application/json" -d "@mark_address_as_detected_as_departed_data.json" "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

timeout /t 30
