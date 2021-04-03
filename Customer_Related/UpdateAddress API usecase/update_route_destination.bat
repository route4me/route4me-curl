@ECHO OFF

SET url=https://www.route4me.com/api.v4/address.php

SET apikey=11111111111111111111111111111111
SET routeid=8E1D64773050020ECBBD3FC2CB46C8FE
SET routedestinationid=217213163,

:: The example refers to the process of updating a route destination by sending custom data of an address with HTTP PUT method.

ECHO ON

curl -o update_destination_alias_RESPONSE.json -g -k -X PUT -H "Content-Type: application/json" -d "@update_route_destination_alias_data_new.json" "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

START /WAIT curl -o update_destination_custom_RESPONSE.json -g -k -X PUT -H "Content-Type: application/json" -d "@update_route_destination_custom_data_new.json" "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

timeout /t 30