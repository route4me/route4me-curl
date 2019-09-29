#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/participants/

api_key=1111111111111111111111111111111111111111111111111111111111111111
participant_user_id=474868258B914C35BABBF333EFD7C7EC
telematic_connection_id=89139BD0A3C343D6B1AE74D1BE612A93

# The example refers to the process of deleting a participant's connection to a telematics vendor

curl -o User_participant_telematics_connection_delete_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X DELETE "$url$participant_user_id/telematics-connection/$telematic_connection_id?api_key=$api_key"

echo "Finished..."

sleep 15
