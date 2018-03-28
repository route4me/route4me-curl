#!/bin/bash

url=https://api.route4me.com/actions/addRouteNotes.php

apikey=11111111111111111111111111111111
routeid=5C15E83A4BE005BCD1537955D28D51D7

addrid=162916895
dev_lat=33.132675170898
dev_lng=-83.244743347168

dev_type=web
updatetype=dropoff
filename="notes.csv"

# The example refers to the process of adding a note to a route with a file uploading and by sending HTTP parameters.

curl -o file1.txt -g -k -X POST -F "strFilename=@$filename" "$url?api_key=$apikey&route_id=$routeid&address_id=$addrid&dev_lat=$dev_lat&dev_lng=$dev_lng&device_type=$dev_type&strUpdateType=ANY_FILE"

echo "Finished..."

sleep 15
