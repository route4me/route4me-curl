#!/bin/bash

# Please, put real value in the parameters api_key

url=https://oa.route4me.com/api/v1/analysis/summary/

api_key=1111111111111111111111111111111111111111111111111111111111111111
original_route_id=499d9fb8cbb3e350ddcd53eb57400249
show_savings=1
show_business_summary=1
show_location_analysis_summary=1
show_location_analysis=1
show_detailed_routes_analysis=1

# The example refers to the process of getting the summary for a route planned in the Route4Me

curl -o Analysis_summary_original_route_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url$original_route_id?show_savings=$show_savings&show_business_summary=$show_business_summary&api_key=$api_key&show_location_analysis_summary=$show_location_analysis_summary&show_location_analysis=$show_location_analysis&show_detailed_routes_analysis=$show_detailed_routes_analysis"

echo "Finished..."

sleep 15
