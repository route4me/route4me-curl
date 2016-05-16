#!/bin/bash

url=https://www.route4me.com/actions/merge_routes.php
apikey=11111111111111111111111111111111

curl -o file1.txt -g -k -X POST -d "@merge_route_data.json" "$url?api_key=$apikey" 

echo "Finished..."

sleep 15
