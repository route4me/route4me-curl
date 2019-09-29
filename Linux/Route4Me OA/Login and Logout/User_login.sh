#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/user/login

api_key=1111111111111111111111111111111111111111111111111111111111111111

# The example refers to the process of login to the system

curl -o User_login_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X POST -d "@User_login_data.json" "$url"

echo "Finished..."

sleep 15
