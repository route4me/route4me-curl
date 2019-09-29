@ECHO OFF

SET url=https://api.route4me.com/api.v4/address.php

SET apikey=11111111111111111111111111111111
SET routeid=CA902292134DBC134EAF8363426BD247
SET routedestinationid=174405640

:: The example refers to the process of updating a route by sending custom data of an address with HTTP PUT method.

ECHO ON

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/json" -d "@update_route_destination_custom_data.json" "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

timeout /t 30