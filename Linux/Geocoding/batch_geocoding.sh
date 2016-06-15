#!/bin/bash

url=http://www.route4me.com/api/geocoder.php
apikey=11111111111111111111111111111111
format=xml
addrs="Los20%Angeles20%International20%Airport,20%CA||Boston,20%MA"


# This task requires clarification- it refuses to work because API key has exceeded its maximum number of requests

curl -o file1.txt -g -X POST -d "@batch_geocoding_data.json" "$url?api_key=$apikey&format=$format&addresses=$addrs" 

echo "Finished..."

sleep 15
