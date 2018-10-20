#!/bin/bash

# Please, put real value in the parameter xAuthToken

url=https://oa.route4me.com/api/v1/api_keys

xAuthToken=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJFQkE3OTQzNTREQzg0N0UzQkMxOUFFRTQ5Q0Y0QUIxQiIsImV4cCI6MTUzMzc0NDI4NSwiaWF0IjoxNTMzMTM5NDg1fQ.bpScknYa4B9XcGa-P6zoeIzMTdT2N1wBgm-B434peZk
offset=0
limit=3

# The example refers to the process of getting the API keys list

curl -o ApiKeys_get_list_RESPONSE.json -H "x-auth-token: $xAuthToken" -H "Accept: application/json" -g -k -X GET "$url?offset=$offset&limit=$limit"

echo "Finished..."

sleep 15
