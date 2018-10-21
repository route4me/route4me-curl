#!/bin/bash

# Please, put real value in the parameters api_key

url=https://oa.route4me.com/api/v1/analysis/routes_comparison/

api_key=1111111111111111111111111111111111111111111111111111111111111111
analyzed_route_id=8D6703CC5793437A8C2780E2D41E0F77
format=xls

# The example refers to the process of downloading the routes comparison report

curl -o Analysis_routes_comparison_report_download_RESPONSE.xls -H "Accept: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" -g -k -X GET  "$url$analyzed_route_id/download/report?api_key=$api_key&analyzed_route_id=$analyzed_route_id&format=$format"

echo "Finished..."

sleep 15
