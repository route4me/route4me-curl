ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/analysis/summary
SET api_key=1111111111111111111111111111111111111111111111111111111111111111

SET member_id=888888
SET show_savings=1
SET show_business_summary=1
SET show_location_analysis_summary=1
SET show_location_analysis=1
SET show_detailed_routes_analysis=1

SET from_ts=1526649668
SET trim_ts=1529328068

:: The example refers to the process of getting the analyse summary for a specified member 

ECHO ON

curl -o Analysis_summary_member_query_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%?show_savings=%show_savings%&show_business_summary=%show_business_summary%&api_key=%api_key%&member_id=%member_id%&show_location_analysis_summary=%show_location_analysis_summary%&show_location_analysis=%show_location_analysis%&show_detailed_routes_analysis=%show_detailed_routes_analysis%&from_ts=%from_ts%&trim_ts=%trim_ts%"

timeout /t 30