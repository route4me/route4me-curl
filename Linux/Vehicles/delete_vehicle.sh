#!/bin/bash

url=https://wh.route4me.com/modules/api/vehicles
apikey=11111111111111111111111111111111
vehicleid=D81F0A4E11BA589A2390999999999999

# The example refers to the process of deleting a vehicle.

curl -o delete_vehicle_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -X DELETE -k "$url$vehicleid?api_key=$apikey"

echo "Finished..."

sleep 15
