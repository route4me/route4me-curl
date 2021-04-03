@ECHO OFF

SET base_url=https://wh.route4me.com/modules/webapi/v5.0
SET endpoint=/routes

SET apikey=11111111111111111111111111111111

SET routeid=30F1C40F6D72A304BEF8E4902B0A917F

ECHO ON

:: The example refers to the process of updating a route by sending parameters with HTTP PUT method.

curl -o update_route_RESPONSE.json -g -X PUT -H "Content-Type: application/json" -d "@update_route_data.json" "%base_url%%endpoint%?route_id=%routeid%&api_key=%apikey%"

timeout /t 30