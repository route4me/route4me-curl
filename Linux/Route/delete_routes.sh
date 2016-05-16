#!/bin/bash

url=https://www.route4me.com/actions/delete_routes.php
apikey=11111111111111111111111111111111

curl -o file1.txt -g -k -X POST -d "@delete_routes_data.json" "$url?api_key=$apikey" 

echo "Finished..."

sleep 15
