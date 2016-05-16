#!/bin/bash

url=https://45.55.208.13:443/street_data/service
apikey=11111111111111111111111111111111
zipcode=00601
housenumber=17

# get street data filtered by zipcode and housenumber without limit

curl -o file1.txt -g -X GET -k "$url/$zipcode/$housenumber/?api_key=$apikey"

echo "Finished..."

sleep 15
