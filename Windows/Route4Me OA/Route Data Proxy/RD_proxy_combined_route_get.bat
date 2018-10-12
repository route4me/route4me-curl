ECHO OFF

:: Please, put the real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/route-data-proxy/combined/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET analyzed_route_id=4FE9DD79D5FA466CCCCCCCCCCCCCCCCC

:: The example refers to the process of getting of an combined analyzed route

ECHO ON

curl -o RD_proxy_combined_route_get_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%%analyzed_route_id%?api_key=%api_key%"

timeout /t 30