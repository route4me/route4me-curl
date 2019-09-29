#!/bin/bash

# Please, put real value in the parameters api_key

url=https://oa.route4me.com/api/v1/analysis/report/

api_key=1111111111111111111111111111111111111111111111111111111111111111
report_id=0000a03de5e31b49f4294ee18eeb14a2e2914b4ce1603a46bf781551b3ae4908
show_savings=1
show_business_summary=1
show_location_analysis_summary=1
show_location_analysis=1
show_detailed_routes_analysis=1

# The example refers to the process of getting a report by sending report_id 

curl -o Analysis_get_report_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url$report_id?show_savings=$show_savings&show_business_summary=$show_business_summary&api_key=$api_key&show_location_analysis_summary=$show_location_analysis_summary&show_location_analysis=$show_location_analysis&show_detailed_routes_analysis=$show_detailed_routes_analysis"

echo "Finished..."

sleep 15
