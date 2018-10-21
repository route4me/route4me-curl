#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/participants/non-active

api_key=c8f031c712715c90b2e0cd1ce19cabf24792eb2d297a85346fa10df16842f40f

# The example refers to the process of getting the non-active participants

curl -o User_non_active_participants_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url?api_key=$api_key"

echo "Finished..."

sleep 15
