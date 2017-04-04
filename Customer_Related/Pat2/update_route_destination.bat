@ECHO OFF

SET url=https://www.route4me.com/api.v4/address.php

SET apikey=4dc953f3649388afacb498836476b05d
SET routeid=23CA316B9CB34B2EB992E183A62EB57C
SET routedestinationid=222432885,

:: The example refers to the process of updating a route destination by sending custom data of an address with HTTP PUT method.

ECHO ON

curl -o update_destination_custom_RESPONSE.json -g -k -X PUT -H "Content-Type: application/json" -d "@update_route_destination_custom_data_RIGHT.json" "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

timeout /t 30