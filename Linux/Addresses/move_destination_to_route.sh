#!/bin/bash

url=https://www.route4me.com/actions/route/move_route_destination.php
apikey=11111111111111111111111111111111
afterdestinationid=161141878

# returns false - needs clarification

curl -o file1.txt -g -X POST -k -d "@move_destination_data.json" "$url?api_key=$apikey&after_destination_id=$afterdestinationid"

echo "Finished..."

sleep 15
