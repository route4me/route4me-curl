@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/notes

SET apikey=11111111111111111111111111111111
SET routeid=7D111F97D0A1009718A16F45E9498B23

:: The example refers to the process of adding a note to a route by sending HTTP parameters.

ECHO ON

curl -o add_notes_to_route_RESPONSE.json -g -k -X POST -H "Content-Type: application/json;" -d "add_notes_to_route_data.json" "%base_url%%endpoint%?api_key=%apikey%"

timeout /t 30
