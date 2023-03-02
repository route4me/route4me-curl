#!/bin/bash

url=https://wh.route4me.com/modules/api/v5.0/vehicles
apikey=11111111111111111111111111111111
vehicle_id=AE350EF3153448665300F2C8216698C6

# The example refers to the process of deleting a vehicle.

curl -o delete_vehicle_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -X DELETE -k "$url/$vehicle_id?api_key=$apikey"

echo "Finished..."

sleep 15
