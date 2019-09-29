#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/affiliates

api_key=1111111111111111111111111111111111111111111111111111111111111111

# The example refers to the process of getting the all affiliates list

curl -o User_all_affiliates_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url?api_key=$api_key&limit=500"

echo "Finished..."

sleep 15
