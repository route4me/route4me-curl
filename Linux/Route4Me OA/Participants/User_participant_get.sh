#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/participants/

api_key=1111111111111111111111111111111111111111111111111111111111111111
participant_id=984C0E2DE340405386518C91D077CDC3

# The example refers to the process of getting a participant

curl -o User_participant_get_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url$participant_id?api_key=$api_key"

echo "Finished..."

sleep 15
