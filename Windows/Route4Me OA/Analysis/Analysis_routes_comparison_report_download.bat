ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/analysis/routes_comparison/
SET api_key=c8f031c712715c90b2e0cd1ce19cabf222222222222222222222222222222222

SET analyzed_route_id=8D6703CC579343777777777777777777
SET format=xls

:: The example refers to the process of downloading the routes comparison report

ECHO ON

curl -o Analysis_routes_comparison_report_download_RESPONSE.xls -H "Accept: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" -g -k -X GET  "%url%%analyzed_route_id%/download/report?api_key=%api_key%&analyzed_route_id=%analyzed_route_id%&format=%format%"

timeout /t 30