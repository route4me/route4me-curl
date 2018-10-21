#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/affiliates/

api_key=1111111111111111111111111111111111111111111111111111111111111111
affiliate_id=5157F2E707CC4813AECB52C05EE35CA2

# The example refers to the process of activating/deactivating an affiliate

curl -o User_affiliate_deactivate_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X PATCH -d "@User_affiliate_deactivate_data.json" "$url$affiliate_id?api_key=$api_key"

echo "Finished..."

sleep 15
