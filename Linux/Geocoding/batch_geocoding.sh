#!/bin/bash

url=http://www.route4me.com/api/geocoder.php
apikey=11111111111111111111111111111111
format=xml
addrs="Los20%Angeles20%International20%Airport,20%CA"

# You can put in the parameter 'addresses' more than one addresses divided by '||', but only one address will be processed, rest addresses will be ignored.

curl -o file1.txt -g -X POST "$url?api_key=$apikey&format=$format&addresses=$addrs" 

echo "Finished..."

sleep 15
