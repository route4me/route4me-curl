#!/bin/bash

# Please, put real value in the parameters api_key

url=https://oa.route4me.com/api/v1/analysis/monitoring

api_key=1111111111111111111111111111111111111111111111111111111111111111
start=1
length=10
ts_to=1532800799
ts_from=1532196000

# The example refers to the process of getting the OA dashboard

curl -o Analysis_data_monitoring_get_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url?api_key=$api_key&start=$start&length=$length&ts_to=$ts_to&ts_from=$ts_from"

echo "Finished..."

sleep 15
