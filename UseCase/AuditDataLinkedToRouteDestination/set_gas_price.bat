@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=DD376C7148E7FEE36CFABE2BD9978BDD

ECHO ON

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/json" -d "@set_gas_price_data.json" "%url%?route_id=%routeid%&api_key=%apikey%"

timeout /t 30