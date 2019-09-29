#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/participants/

api_key=1111111111111111111111111111111111111111111111111111111111111111
participant_user_id=A2F8FE5085EA4412BE9B7AB00665F0E1
telematic_connection_id=A25C3B365005429490B4D08345BC5DDA

#  The example refers to the process of updating the name of a participant's telematics connection

curl -o User_participant_tc_update_name_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X PUT -d "@User_participant_tc_update_name_data.json" "$url$participant_user_id/telematics-connection/$telematic_connection_id?api_key=$api_key"

echo "Finished..."

sleep 15
