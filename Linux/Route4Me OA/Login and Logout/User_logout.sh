#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/logout

api_key=1111111111111111111111111111111111111111111111111111111111111111

# The example refers to the process of logout from the system

curl -o User_logout_RESPONSE.json -H "Accept: application/json" -g -k -X GET "$url"

echo "Finished..."

sleep 15
