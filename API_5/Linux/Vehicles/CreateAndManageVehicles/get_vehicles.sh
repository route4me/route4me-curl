#!/bin/bash

url=https://wh.route4me.com/modules/api/v5.0/vehicles
apikey=11111111111111111111111111111111
show=active
search_query=Medium

# The example refers to the process of getting a list of the vehicles.

curl -o get_vehicles_RESPONSE.json -g -X GET -k "$url?api_key=$apikey&show=$show&search_query=$search_query"

echo "Finished..."

sleep 15
