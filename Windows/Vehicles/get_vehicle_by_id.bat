@ECHO OFF

SET url=https://wh.route4me.com/modules/api/vehicles
SET apikey=11111111111111111111111111111111
SET vehicleid=D81F0A4E11BA589A2390999999999999

:: The example refers to the process of getting a vehicle by vehicle_id.

ECHO ON

curl -o get_vehicle_by_id_RESPONSE.json -g -X GET -k "%url%%vehicleid%?api_key=%apikey%"

timeout /t 30