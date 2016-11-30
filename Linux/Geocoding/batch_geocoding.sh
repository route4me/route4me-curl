#!/bin/bash

url=http://www.route4me.com/api/geocoder.php
apikey=11111111111111111111111111111111
format=xml
addrs="Los20%Angeles20%International20%Airport,20%CA"

# The example refers to the process of the forward geocoding.

curl -o file1.txt -g -X POST "$url?api_key=$apikey&format=$format&addresses=$addrs" 

echo "Finished..."

sleep 15
