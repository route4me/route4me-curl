#!/bin/bash

# The example refers to the process of the forward geocoding.

curl -o file1.txt -G -X GET http://api.route4me.com/api/geocoder.php \
	-d api_key=11111111111111111111111111111111 \
	-d format=json \
	--data-urlencode addresses="Los Angeles International Airport, CA"

echo "Finished..."

sleep 15
