#!/bin/bash

url=https://api.route4me.com/api.v4/avoidance.php
apikey=11111111111111111111111111111111

# Example demonstrates creating an avoidance zone with circle shape by sending HTTP parameters
 
curl -o file1.txt -g -k -X POST -d "@create_circle_zone_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
