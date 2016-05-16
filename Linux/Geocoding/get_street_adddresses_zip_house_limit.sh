#!/bin/bash

url=https://45.55.208.13:443/street_data/service
apikey=11111111111111111111111111111111
zipcode=00601
housenumber=17
offset=0
limit=20

# get street data filtered by zipcode and housenumber with limit and offset

curl -o file1.txt -g -X GET -k "$url/$zipcode/$housenumber/$offset/$limit/?api_key=$apikey"

echo "Finished..."

sleep 15
