#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/vendors/

api_key=1111111111111111111111111111111111111111111111111111111111111111
user_id=F9E0EC7394CF4C2F9965B4F2173E2501

# The example refers to the process of getting a telematics vendors belonging to the user.

curl -o User_telematics_vendor_get_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url$user_id?api_key=$api_key"

echo "Finished..."

sleep 15
