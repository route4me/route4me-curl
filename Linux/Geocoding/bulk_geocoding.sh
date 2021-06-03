#!/bin/bash

url=http://api.route4me.com/actions/upload/json-geocode.php
apikey=11111111111111111111111111111111


# The endpoint is obsolete.
curl -o file1.txt -g -X POST -d "@bulk_geocoding_data.json" "$url?api_key=$apikey" 

echo "Finished..."

sleep 15
