#!/bin/bash

url=https://rapid.route4me.com/street_data/zipcode
apikey=11111111111111111111111111111111
zipcode=00601

# The example refers to the process of getting all street data filtered by specified zipcode.

curl -o file1.txt -g -X GET -k "$url/$zipcode/?api_key=$apikey"

echo "Finished..."

sleep 15
