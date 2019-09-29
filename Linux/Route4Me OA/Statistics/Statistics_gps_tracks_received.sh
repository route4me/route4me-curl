#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/statistics/gps-track/received/count-grouped

api_key=1111111111111111111111111111111111111111111111111111111111111111
from_ts=1526649668
trim_ts=1529328068

# The example refers to the process of getting the statistics of the received GPS tracks

curl -o Statistics_gps_tracks_received_RESPONSE.json -H "Accept: application/json" -g -k -X GET "$url?api_key=$api_key&from_ts=$from_ts&trim_ts=$trim_ts"

echo "Finished..."

sleep 15
