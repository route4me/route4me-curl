#!/bin/bash

url=https://wh.route4me.com/modules/api/vehicles
apikey=11111111111111111111111111111111
vehicleid=D81F0A4E11BA589A2390999999999999

# The example refers to the process of getting a vehicle by vehicle_id.

curl -o get_vehicle_by_id_RESPONSE.json -g -X GET -k "$url$vehicleid?api_key=$apikey"

echo "Finished..."

sleep 15
