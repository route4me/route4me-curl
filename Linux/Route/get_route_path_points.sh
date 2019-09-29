#!/bin/bash

url=http://api.route4me.com/api.v4/route.php
apikey=11111111111111111111111111111111
routeid=4728372005DE97EF9E4205852D690E34
rpo=Points

# The example refers to the process of getting a route with the path points.

curl -o file1.txt -g -X POST -H "Content-Type: application/json" -d "@new_route_data.json" "$url?api_key=$apikey&route_id=$routeid&route_path_output=$rpo"

echo "Finished..."

sleep 15
