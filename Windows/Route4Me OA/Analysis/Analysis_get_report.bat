ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/analysis/report/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111

SET report_id=0000a03de5e31b49f4294ee18eeb14a2e2914b44444444444444444444444444
SET show_savings=1
SET show_business_summary=1
SET show_location_analysis_summary=1
SET show_location_analysis=1
SET show_detailed_routes_analysis=1

:: The example refers to the process of getting a report by sending report_id 

ECHO ON

curl -o Analysis_get_report_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%%report_id%?show_savings=%show_savings%&show_business_summary=%show_business_summary%&api_key=%api_key%&show_location_analysis_summary=%show_location_analysis_summary%&show_location_analysis=%show_location_analysis%&show_detailed_routes_analysis=%show_detailed_routes_analysis%"

timeout /t 30