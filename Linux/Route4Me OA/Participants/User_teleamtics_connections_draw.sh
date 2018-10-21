#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/telematics-connections

api_key=1111111111111111111111111111111111111111111111111111111111111111
start=1
length=3
draw=1

# The example refers to the process of assigning the technical parameter draw to the telematics connections

curl -o User_teleamtics_connections_draw_RESPONSE.json -H "Accept: application/json" -g -k -X POST -F "start=$start" -F "length=$length" -F "draw=$draw" "$url?api_key=$api_key"

echo "Finished..."

sleep 15
