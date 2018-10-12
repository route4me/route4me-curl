ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/analysis/summary/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111

SET original_route_id=499d9fb8cbb3e350dddddddddddddddd
SET show_savings=1
SET show_business_summary=1
SET show_location_analysis_summary=1
SET show_location_analysis=1
SET show_detailed_routes_analysis=1

:: The example refers to the process of getting the summary for a route planned in the Route4Me 

ECHO ON

curl -o Analysis_summary_original_route_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%%original_route_id%?show_savings=%show_savings%&show_business_summary=%show_business_summary%&api_key=%api_key%&show_location_analysis_summary=%show_location_analysis_summary%&show_location_analysis=%show_location_analysis%&show_detailed_routes_analysis=%show_detailed_routes_analysis%"

timeout /t 30