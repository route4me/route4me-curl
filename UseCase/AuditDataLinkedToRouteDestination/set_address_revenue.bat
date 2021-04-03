@ECHO OFF
SET url=https://www.route4me.com/api.v4/address.php
SET apikey=11111111111111111111111111111111
SET routeid=DD376C7148E7FEE36CFABE2BD9978BDD
SET routedestinationid=183045810

ECHO ON

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/json" -d "@set_address_revenue_data.json" "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

timeout /t 30