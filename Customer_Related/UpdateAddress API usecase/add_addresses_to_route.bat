@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php

SET apikey=11111111111111111111111111111111
SET routeid=8E1D64773050020ECBBD3FC2CB46C8FE

:: The example refers to the process of adding an address to a route.
:: You should insert real test data and your API key for accurate testing.

ECHO ON

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/json" -d "@add_addresses_to_route_data.json" "%url%?route_id=%routeid%&api_key=%apikey%"

timeout /t 30