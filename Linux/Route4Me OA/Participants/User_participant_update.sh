#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/participants/

api_key=1111111111111111111111111111111111111111111111111111111111111111
participant_id=FF59D906A68B43508E3E40D44EB73CCE

# The example refers to the process of updating a participant

curl -o User_participant_update_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X PUT -d "@User_participant_update_data.json" "$url$participant_id?api_key=$api_key"

echo "Finished..."

sleep 15
