#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/depot/

api_key=1111111111111111111111111111111111111111111111111111111111111111
depot_id=0E76BE2F7EBD4CDF85657AA138EF0C8F

# The example refers to the process of getting a depot

curl -o Depots_get_depot_RESPONSE.json -H "Accept: application/json" -g -k -X GET "$url$depot_id?api_key=$api_key"

echo "Finished..."

sleep 15
