@ECHO OFF

SET url=https://wh.route4me.com/modules/api/vehicles
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting a list of the vehicles.

ECHO ON

curl -o get_vehicles_RESPONSE.json -g -X GET -k "%url%?api_key=%apikey%"

timeout /t 30