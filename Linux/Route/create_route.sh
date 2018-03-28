#!/bin/bash

url=http://api.route4me.com/api.v4/optimization_problem.php
apikey=11111111111111111111111111111111

# The example refers to the process of creating new route.

curl -o file1.txt -g -X POST -H "Content-Type: application/json" -d "@new_route_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
