#!/bin/bash

url=https://rapid.route4me.com/street_data/
apikey=11111111111111111111111111111111


# get all street data
curl -o file1.txt -g -X GET -k "$url?api_key=$apikey"

echo "Finished..."

sleep 15
