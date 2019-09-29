#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/route-data-proxy/

api_key=1111111111111111111111111111111111111111111111111111111111111111
route_id=DB5E95F09FF7443335A4FECE0BE9B66D

# The example refers to the process of getting of a route

curl -o RD_proxy_route_get_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url$route_id?api_key=$api_key"

echo "Finished..."

sleep 15
