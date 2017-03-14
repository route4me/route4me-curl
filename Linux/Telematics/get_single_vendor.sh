#!/bin/bash

url=https://telematics.route4me.com/api/vendors.php
apikey=11111111111111111111111111111111
vendor_id=153

# The example refers to the process of getting a telematics vendor.

curl -o get_single_vendor_RESPONSE.json -g -k -X GET "$url?api_key=$apikey&vendor_id=$vendor_id"

echo "Finished..."

sleep 15
