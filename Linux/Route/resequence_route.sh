#!/bin/bash

url=http://api.route4me.com/api.v4/route.php
apikey=11111111111111111111111111111111
routeid=5C15E83A4BE005BCD1537955D28D51D7
routedestid=160955261

# The example refers to the process of resequencing a specified address inside a route.

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@resequence_data.json" "$url?route_id=$routeid&route_destination_id=$routedestid&api_key=$apikey"

echo "Finished..."

sleep 15
