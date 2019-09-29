#!/bin/bash

url=http://api.route4me.com/api.v4/route.php
apikey=11111111111111111111111111111111
routeid=5C15E83A4BE005BCD1537955D28D51D7

# The example refers to the process of updating a route by sending parameters with HTTP PUT method.

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@update_route_data.json" "$url?route_id=$routeid&api_key=$apikey"

echo "Finished..."

sleep 15
