#!/bin/bash

url=https://wh.route4me.com/modules/api/vehicles
apikey=11111111111111111111111111111111
with_pagination=true
page=2
perPage=10

# The example refers to the process of getting a list of the vehicles.

curl -o get_vehicles_RESPONSE.json -g -X GET -k "$url?api_key=$apikey&with_pagination=$with_pagination&page=$page&perPage=$perPage"

echo "Finished..."

sleep 15