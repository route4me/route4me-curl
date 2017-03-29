@ECHO OFF

SET url=https://www.route4me.com/api.v4/address.php

SET apikey=4dc953f3649388afacb498836476b05d
SET routeid=E6DA23FECE9A23A097D8966BD70D39D0
SET routedestinationid=221228840,

:: The example refers to the process of updating a route destination by sending custom data of an address with HTTP PUT method.

ECHO ON

curl -o update_destination_custom_RESPONSE.json -g -k -X PUT -H "Content-Type: application/json" -d "@update_route_destination_custom_data.json" "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

timeout /t 30