#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/members/devices/

api_key=1111111111111111111111111111111111111111111111111111111111111111
device_id=0013311c7b795450998fbc6d6e1cc7dc
timestamp=1534195390

# The example refers to the process of getting a stop from the device by timestamp.

curl -o User_member_device_stop_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url$device_id/stops/$timestamp?api_key=$api_key"

echo "Finished..."

sleep 15
