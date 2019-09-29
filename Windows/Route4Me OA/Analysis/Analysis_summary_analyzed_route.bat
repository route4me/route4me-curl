ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/analysis/route/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111

SET analyzed_route_id=4FE9DD79D5FA46666666666666666666
SET show_savings=1
SET show_business_summary=1
SET show_location_analysis_summary=1
SET show_location_analysis=1
SET show_detailed_routes_analysis=1

:: The example refers to the process of getting the summary of an analyzed route 

ECHO ON

curl -o Analysis_summary_analyzed_route_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%%analyzed_route_id%?show_savings=%show_savings%&show_business_summary=%show_business_summary%&api_key=%api_key%&show_location_analysis_summary=%show_location_analysis_summary%&show_location_analysis=%show_location_analysis%&show_detailed_routes_analysis=%show_detailed_routes_analysis%"

timeout /t 30