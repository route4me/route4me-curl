#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/stops/detect

api_key=1111111111111111111111111111111111111111111111111111111111111111

# The example refers to the process of detecting of the vehicle stops

curl -o Stops_detect_stops_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X POST -d "@Stops_detect_stops_data.json" "$url?api_key=$api_key"

echo "Finished..."

sleep 15
