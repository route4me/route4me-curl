@ECHO OFF

SET url=https://www.route4me.com/api.v4/address.php

SET apikey=11111111111111111111111111111111
SET routeid=8709A02ED54F568894E72E7FF0EB672E
SET routedestinationid=248379455

:: The example refers to the process of updating a route destination by sending HTTP parameters.

ECHO ON

curl -o update_route_destination_RESPONSE.json -g -k -X PUT -H "Content-Type: application/json" -d "@update_route_destination_data.json" "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

timeout /t 30