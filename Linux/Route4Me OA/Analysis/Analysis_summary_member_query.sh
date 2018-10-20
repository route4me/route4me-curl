#!/bin/bash

# Please, put real value in the parameters api_key

url=https://oa.route4me.com/api/v1/analysis/summary

api_key=1111111111111111111111111111111111111111111111111111111111111111
member_id=806101
show_savings=1
show_business_summary=1
show_location_analysis_summary=1
show_location_analysis=1
show_detailed_routes_analysis=1

from_ts=1526649668
trim_ts=1529328068

# The example refers to the process of getting the analyse summary for a specified member 

curl -o Analysis_summary_member_query_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url?show_savings=$show_savings&show_business_summary=$show_business_summary&api_key=$api_key&member_id=$member_id&show_location_analysis_summary=$show_location_analysis_summary&show_location_analysis=$show_location_analysis&show_detailed_routes_analysis=$show_detailed_routes_analysis&from_ts=$from_ts&trim_ts=$trim_ts"

echo "Finished..."

sleep 15
