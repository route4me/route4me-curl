#!/bin/bash

url=https://rapid.route4me.com/street_data/service
apikey=11111111111111111111111111111111
zipcode=00601
housenumber=17

# The example refers to the process of getting street data filtered by specified zipcode and housenumber.

curl -o file1.txt -g -X GET -k "$url/$zipcode/$housenumber/?api_key=$apikey"

echo "Finished..."

sleep 15
