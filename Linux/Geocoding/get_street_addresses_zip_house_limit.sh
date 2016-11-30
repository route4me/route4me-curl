#!/bin/bash

url=https://rapid.route4me.com/street_data/service
apikey=11111111111111111111111111111111
zipcode=00601
housenumber=17
offset=0
limit=20

# The example refers to the process of getting street data filtered by specified zipcode and housenumber and limited by specified parameters.

curl -o file1.txt -g -X GET -k "$url/$zipcode/$housenumber/$offset/$limit/?api_key=$apikey"

echo "Finished..."

sleep 15
