#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/route-data-proxy/actual/

api_key=1111111111111111111111111111111111111111111111111111111111111111
analyzed_route_id=4FE9DD79D5FA466CB3E24E528BA274C7

# The example refers to the process of getting of an acttual analyzed route

curl -o RD_proxy_actual_route_get_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url$analyzed_route_id?api_key=$api_key"

echo "Finished..."

sleep 15
