#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/affiliates/

api_key=1111111111111111111111111111111111111111111111111111111111111111
affiliate_id=5157F2E707CC4813AECB52C05EE35CA2

# The example refers to the process of getting the affiliate information

curl -o User_affiliate_info_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url$affiliate_id?api_key=$api_key"

echo "Finished..."

sleep 15
