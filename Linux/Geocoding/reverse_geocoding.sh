#!/bin/bash

url=http://www.route4me.com/api/geocoder.php
apikey=11111111111111111111111111111111
format=json
addrs="33.945705,-118.391105"

# You can put in the parameter 'addresses' more than one location divided by '||', but only one location will be processed, rest locations will be ignored.

curl -o file1.txt -g -X POST "$url?api_key=$apikey&addresses=$addrs" 

echo "Finished..."

sleep 15
