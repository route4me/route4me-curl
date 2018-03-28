#!/bin/bash

url=https://api.route4me.com/api.v4/route.php
apikey=11111111111111111111111111111111
routeid=5C15E83A4BE005BCD1537955D28D51D7
directions=1

# The example refers to the process of getting a route with the directions.

curl -o file1.txt -g -k -X POST -H "Content-Type: application/json" -d "@new_route_data.json" "$url?api_key=$apikey&route_id=$routeid&directions=$directions"

echo "Finished..."

sleep 15
