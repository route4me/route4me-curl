#!/bin/bash

url=https://api.route4me.com/api.v4/territory.php
apikey=11111111111111111111111111111111

curl -o file1.txt -g -k -X POST -d "@create_circle_zone_data.json" "$url?api_key=$apikey"

# The example refers to the process of creating a territory zone with circle shape by sending HTTP data.

echo "Finished..."

sleep 15
