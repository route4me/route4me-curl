#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/participants/

api_key=1111111111111111111111111111111111111111111111111111111111111111
participant_user_id=9B6D55A57AD44B57850371564C95AEE8

# The example refers to the process of creating connection to a telematics vendor

curl -o User_participant_telematics_connection_create_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X POST -d "@User_participant_telematics_connection_create_data.json" "$url$participant_user_id/telematics-connection?api_key=$api_key"

echo "Finished..."

sleep 15
