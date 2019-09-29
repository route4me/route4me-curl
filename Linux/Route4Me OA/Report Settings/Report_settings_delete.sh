#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/report/settings/

api_key=1111111111111111111111111111111111111111111111111111111111111111
user_id=7F9590B72CC941A49CD5348FE6002E04

# The example refers to the process of deleting the report settings

curl -o Report_settings_delete_RESPONSE.json -H "Accept: application/json" -g -k -X DELETE  "$url?api_key=$api_key&user_id=$user_id"

echo "Finished..."

sleep 15
