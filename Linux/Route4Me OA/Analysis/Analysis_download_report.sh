#!/bin/bash

# Please, put real value in the parameters api_key

url=https://oa.route4me.com/api/v1/analysis/download/report

api_key=1111111111111111111111111111111111111111111111111111111111111111
member_id=806155
from_ts=1526649668
trim_ts=1529328068
format=xls

# The example refers to the process of downloading an analysis report

curl -o Analysis_download_report_RESPONSE.xls -H "Accept: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" -g -k -X GET  "$url?api_key=$api_key&member_id=$member_id&from_ts=$from_ts&trim_ts=$trim_ts&format=$format"

echo "Finished..."

sleep 15
