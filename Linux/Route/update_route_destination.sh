#!/bin/bash

url=http://api.route4me.com/api.v4/address.php

apikey=11111111111111111111111111111111
routeid=CA902292134DBC134EAF8363426BD247
routedestinationid=174405640

# The example refers to the process of updating a route destination by sending HTTP parameters.

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@update_route_destination_data.json" "$url?api_key=$apikey&route_id=$routeid&route_destination_id=$routedestinationid"

echo "Finished..."

sleep 15
