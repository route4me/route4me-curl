#!/bin/bash

url=http://www.route4me.com/api.v4/address.php
apikey=11111111111111111111111111111111
routeid=241466F15515D67D3F951E2DA38DE76D
routedestinationid=167899269

:: is_visited=1 means address was visited, is_departed=0 --- not visited

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@mark_address_as_detected_as_departed_data.json" "$url?api_key=$apikey%&route_id=$routeid&route_destination_id=$routedestinationid"

echo "Finished..."

sleep 15
