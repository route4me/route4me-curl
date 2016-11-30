#!/bin/bash

url=https://rapid.route4me.com/street_data
apikey=11111111111111111111111111111111
offset=5
limit=10

# The example refers to the process of getting limited number of the street data.
# Attention, this endpoint doesn't work at offset=0

curl -o file1.txt -g -X GET -k "$url/$offset/$limit/?api_key=$apikey"

echo "Finished..."

sleep 15
