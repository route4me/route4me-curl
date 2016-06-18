#!/bin/bash

url=https://rapid.route4me.com/street_data
apikey=11111111111111111111111111111111
pk=4

# get single street data. Parameter pk is street sequential number in all streets list

curl -o file1.txt -g -X GET -k "$url/$pk/?api_key=$apikey"

echo "Finished..."

sleep 15
