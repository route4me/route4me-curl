@ECHO OFF

SET url=https://wh.route4me.com/modules/api/vehicles
SET apikey=11111111111111111111111111111111

:: The example refers to the process of creating a new vehicle.

ECHO ON

curl -o create_new_vehicle_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -X POST -k -d "@create_new_vehicle_data.json" "%url%?api_key=%apikey%"

timeout /t 30