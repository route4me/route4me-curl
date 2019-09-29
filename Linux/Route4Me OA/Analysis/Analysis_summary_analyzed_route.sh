#!/bin/bash

# Please, put real value in the parameters api_key

url=https://oa.route4me.com/api/v1/analysis/route/

api_key=1111111111111111111111111111111111111111111111111111111111111111
analyzed_route_id=4FE9DD79D5FA466CB3E24E528BA274C7
show_savings=1
show_business_summary=1
show_location_analysis_summary=1
show_location_analysis=1
show_detailed_routes_analysis=1

# The example refers to the process of getting the summary of an analyzed route 

curl -o Analysis_summary_analyzed_route_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url$analyzed_route_id?show_savings=$show_savings&show_business_summary=$show_business_summary&api_key=$api_key&show_location_analysis_summary=$show_location_analysis_summary&show_location_analysis=$show_location_analysis&show_detailed_routes_analysis=$show_detailed_routes_analysis"

echo "Finished..."

sleep 15
