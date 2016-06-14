#!/bin/bash

url=https://www.route4me.com/api/vehicles/view_vehicles.php
apikey=11111111111111111111111111111111

curl -o file1.txt -g -X GET -k "$url?api_key=$apikey"

echo "Finished..."

sleep 15
