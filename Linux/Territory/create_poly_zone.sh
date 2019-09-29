#!/bin/bash

url=https://api.route4me.com/api.v4/territory.php
apikey=11111111111111111111111111111111

# The example refers to the process of creating a territory zone with polygone shape by sending HTTP data.

curl -o file1.txt -g -k -X POST -d "@create_poly_zone_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
