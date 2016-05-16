#!/bin/bash

url=https://www.route4me.com/actions/route/move_route_destination.php
apikey=11111111111111111111111111111111

# returns false - needs clarification

curl -o file1.txt -g -X POST -H "Content-Type: application/json" -k -d "@move_destination_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
