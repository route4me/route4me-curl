#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/report/settings/

api_key=c8f031c712715c90b2e0cd1ce19cabf24792eb2d297a85346fa10df16842f40f
user_id=7F9590B72CC941A49CD5348FE6002E04

# The example refers to the process of deleting the report settings

curl -o Report_settings_delete_RESPONSE.json -H "Accept: application/json" -g -k -X DELETE  "$url?api_key=$api_key&user_id=$user_id"

echo "Finished..."

sleep 15
