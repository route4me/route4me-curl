#!/bin/bash

# route_id and address_id are not real - put real values

url=https://www.route4me.com/actions/addRouteNotes.php
apikey=11111111111111111111111111111111
routeid=vf55g4fg5dfgfdg1fdgd21g2f
addrid=787854545455
dev_lat=33.132675170898
dev_lng=-83.244743347168
dev_type=web
updatetype=dropoff

# Always returns false - needs clarification

curl -o file1.txt -g -k -X POST -d "@add_notes_to_route_data.json" "$url?api_key=$apikey&route_id=$routeid&address_id=$addrid&dev_lat=$dev_lat&dev_lng=$dev_lng&device_type=$dev_type"

echo "Finished..."

sleep 15
