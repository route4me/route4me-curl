#!/bin/bash

url=https://api.route4me.com/actions/addRouteNotes.php

apikey=11111111111111111111111111111111
routeid=DD376C7148E7FEE36CFABE2BD9978BDD

# The parameters of the address "2705 N River Rd, Stow, OH 44224"
addrid=183045812
dev_lat=41.145240783691
dev_lng=-81.410247802734

dev_type=web
updatetype=dropoff
content=Note example for Destination Audit Use Case

# The example refers to the process of adding a note to a route by sending HTTP parameters.

curl -o file1.txt -g -k -X POST -H "Content-Type: multipart/form-data;" -F "strNoteContents=$content" -F "strUpdateType=$dropoff" "$url?api_key=$apikey&route_id=$routeid&address_id=$addrid&dev_lat=$dev_lat&dev_lng=$dev_lng&device_type=$dev_type"

echo "Finished..."

sleep 15
