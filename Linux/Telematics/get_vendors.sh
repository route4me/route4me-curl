#!/bin/bash

url=https://telematics.route4me.com/api/vendors.php
apikey=11111111111111111111111111111111

# The example refers to the process of getting the telematics vendors.

curl -o get_vendors_RESPONSE.json -g -k -X GET "$url?api_key=$apikey"

echo "Finished..."

sleep 15
