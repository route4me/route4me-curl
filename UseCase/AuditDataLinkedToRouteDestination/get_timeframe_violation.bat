@ECHO OFF
SET url=http://www.route4me.com/api.v4/address.php
SET apikey=11111111111111111111111111111111
SET routeid=DD376C7148E7FEE36CFABE2BD9978BDD
SET routedestinationid=183045808

ECHO ON
curl -o file1.txt -g -X GET "%URL%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

timeout /t 30