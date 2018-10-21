#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/depot/

api_key=1111111111111111111111111111111111111111111111111111111111111111
algo_id=7F3DC4020C3C4A3596BB0A6337BB791F
member_id=806155

# The example refers to the process of getting the depots list

curl -o Depots_get_list_RESPONSE.json -H "Accept: application/json" -g -k -X GET "$url?api_key=$api_key&algo_id=$algo_id&member_id=$member_id"

echo "Finished..."

sleep 15
