#!/bin/bash

# Please, put real value in the parameter api_key

url=https://oa.route4me.com/api/v1/audit/members/

api_key=1111111111111111111111111111111111111111111111111111111111111111
r4m_member_id=806155
timestamp_from=1526649668
timestamp_to=1529328068

# The example refers to the process of getting all detected routes by the member_id

curl -o Audit_members_detected_routes_get_RESPONSE.json -H "Accept: application/json" -g -k -X GET "$url$r4m_member_id/detected-routes?api_key=$api_key&timestamp_from=$timestamp_from&timestamp_to=$timestamp_to"

echo "Finished..."

sleep 15
