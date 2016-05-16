#!/bin/bash

# Plain TSP route planning

url=https://www.route4me.com//api.v4/optimization_problem.php
apikey=11111111111111111111111111111111

curl -o file1.txt -g -k -X POST -d "@addresses4.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
