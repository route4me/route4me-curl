#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/members/devices/

api_key=1111111111111111111111111111111111111111111111111111111111111111
device_id=078863f92e5d6212128e78dc2094c658

# The example refers to the process of getting a member's device

curl -o User_member_device_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url$device_id?api_key=$api_key"

echo "Finished..."

sleep 15
