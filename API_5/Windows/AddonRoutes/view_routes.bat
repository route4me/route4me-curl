@ECHO OFF

SET base_url=https://wh.route4me.com/modules/webapi/v5.0
SET endpoint=/routes

SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting limited number of routes from an user's account.

ECHO ON
curl -o view_routes_RESPONSE.json -g -k -X GET "%base_url%%endpoint%?api_key=%apikey%&limit=10&offset=0" 

timeout /t 30