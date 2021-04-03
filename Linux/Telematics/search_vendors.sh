#!/bin/bash

url=https://telematics.route4me.com/api/vendors.php
apikey=11111111111111111111111111111111
# Accepted values for the parameter size: global, regional, local
size=global
# Accepted values for the parameter is_integrated: 1, 0
is_integrated=1
feature=Satellite
country=GB
search=Fleet
page=1
per_page=15

# The example refers to the process of searching the telematics vendors by sending HTTP parameters.

curl -o search_vendors_RESPONSE_1.json -g -k -X GET "$url?api_key=$apikey&size=$size&per_page=$per_page&page=$page&is_integrated=$is_integrated"

curl -o search_vendors_RESPONSE_2.json -g -k -X GET "$url?api_key=$apikey&feature=$feature"

curl -o search_vendors_RESPONSE_3.json -g -k -X GET "$url?api_key=$apikey&country=$country"

curl -o search_vendors_RESPONSE_4.json -g -k -X GET "$url?api_key=$apikey&s=$search"

echo "Finished..."

sleep 15
