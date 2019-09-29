#!/bin/bash

# Please, put real value in the parameters api_key

url=https://oa.route4me.com/api/v1/feed/all
api_key=1111111111111111111111111111111111111111111111111111111111111111
fromTs=1526649668
SET trimTs=1533650129

# The example refers to the process of getting limited number of the locations from an address book belonged to an user.

curl -o Feed_all_activity_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url?from_ts=$fromTs&trim_ts=$trimTs&api_key=$api_key"

echo "Finished..."

sleep 15
