#!/bin/bash

url=https://api.route4me.com/api.v4/route.php
apikey=11111111111111111111111111111111
routeid=79F570D5523C8156955786789DACDEC8

# The example refers to the process of recomputing a route directions by sending parameters with HTTP PUT method.

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/json" -d "@recompute_directions_data.json" "$url?route_id=$routeid&api_key=$apikey&recompute_directions=1"

echo "Finished..."

sleep 15
