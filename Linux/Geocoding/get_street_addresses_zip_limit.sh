#!/bin/bash

url=https://rapid.route4me.com/street_data/zipcode
apikey=11111111111111111111111111111111
zipcode=00601
offset=0
limit=20

# The example refers to the process of getting street data filtered by zipcode and limited with specified parameters.

curl -o file1.txt -g -X GET -k "$url/$zipcode/$offset/$limit/?api_key=$apikey"

echo "Finished..."

sleep 15
