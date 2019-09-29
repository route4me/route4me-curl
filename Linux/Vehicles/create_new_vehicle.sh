#!/bin/bash

url=https://wh.route4me.com/modules/api/vehicles
apikey=11111111111111111111111111111111

# The example refers to the process of creating a new vehicle.

curl -o create_new_vehicle_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -X POST -k -d "@create_new_vehicle_data.json" "$url$vehicleid?api_key=$apikey"

echo "Finished..."

sleep 15
