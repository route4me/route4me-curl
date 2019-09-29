@ECHO OFF

SET url=https://api.route4me.com/api.v4/address.php
SET apikey=11111111111111111111111111111111
SET routeid=241466F15515D67D3F951E2DA38DE76D
SET routedestinationid=167899269

ECHO ON

:: The example refers to the process of marking an address as detected as visited.
:: is_visited=1 means address was marked as visited.

curl -o file1.txt -k -g -X PUT -H "Content-Type: application/json" -d "@mark_address_as_detected_as_visited_data.json" "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

timeout /t 30
