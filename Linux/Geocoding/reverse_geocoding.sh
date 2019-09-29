#!/bin/bash

url=http://api.route4me.com/api/geocoder.php
apikey=11111111111111111111111111111111
format=json
addrs="33.945705,-118.391105"

# The example refers to the process of reverse geocoding.

curl -o file1.txt -g -X POST "$url?api_key=$apikey&addresses=$addrs" 

echo "Finished..."

sleep 15
