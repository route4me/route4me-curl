@ECHO OFF

SET url=https://www.route4me.com/api.v4/address.php

SET apikey=11111111111111111111111111111111
SET routeid=5723944D461A50C8B98EA0416D6A3882
SET routedestinationid=220386831,

:: The example refers to the process of updating a route destination by sending custom data of an address with HTTP PUT method.

ECHO ON

curl -o update_destination_custom_RESPONSE.json -g -k -X PUT -H "Content-Type: application/json" -d "@update_route_destination_custom_data_WRONG_2.json" "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

timeout /t 30