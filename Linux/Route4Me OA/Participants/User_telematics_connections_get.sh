#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/telematics-connections

api_key=1111111111111111111111111111111111111111111111111111111111111111
offset=0
limit=100

# The example refers to the process of getting the telematics connections

curl -o User_telematics_connections_get_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url?api_key=$api_key&offset=$offset&limit=$limit"

echo "Finished..."

sleep 15
