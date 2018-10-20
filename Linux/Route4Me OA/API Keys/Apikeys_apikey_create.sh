#!/bin/bash

# Please, put real value in the parameters api_key

url=https://oa.route4me.com/api/v1/api_keys

xAuthToken=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJFQkE3OTQzNTREQzg0N0UzQkMxOUFFRTQ5Q0Y0QUIxQiIsImV4cCI6MTUzMzc0NDI4NSwiaWF0IjoxNTMzMTM5NDg1fQ.bpScknYa4B9XcGa-P6zoeIzMTdT2N1wBgm-B434peZk

# The example refers to the process of creating an API key

curl -o Apikeys_apikey_create_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -H "x-auth-token: $xAuthToken" -g -k -X POST -d "@Apikeys_apikey_create_data.json" "$url"

echo "Finished..."

sleep 15
