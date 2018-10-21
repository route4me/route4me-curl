#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/members/

api_key=1111111111111111111111111111111111111111111111111111111111111111
members_id=806155

# The example refers to the process of getting the devices of a member by parameter members_id

curl -o User_member_devices_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url$members_id/devices?api_key=$api_key"

echo "Finished..."

sleep 15
