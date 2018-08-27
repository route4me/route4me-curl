ECHO OFF

:: Please, put the real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/route-data-proxy/
SET api_key=c8f031c712715c90b2e0cd1ce19cabf24792eb22222222222222222222222222
SET route_id=DB5E95F09FF7443335A4444444444444

:: The example refers to the process of getting of a route

ECHO ON

curl -o RD_proxy_route_get_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%%route_id%?api_key=%api_key%"

timeout /t 30