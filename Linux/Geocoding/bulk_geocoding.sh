#!/bin/bash

url=http://www.route4me.com/actions/upload/json-geocode.php
apikey=11111111111111111111111111111111


# This task requires clarification- it refuses to work because API key has exceeded its maximum number of requests

curl -o file1.txt -g -X POST -d "@bulk_geocoding_data.json" "$url?api_key=$apikey" 

echo "Finished..."

sleep 15
