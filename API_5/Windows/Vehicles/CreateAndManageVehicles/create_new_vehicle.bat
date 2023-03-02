@ECHO OFF

SET url=https://wh.route4me.com/modules/api/v5.0/vehicles
SET apikey=5B05A8B6C4DB22C0CD6966F01D5FB4E0

:: The example refers to the process of creating a new vehicle.

ECHO ON

curl -o create_new_vehicle_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -X POST -k -d "@create_new_vehicle_data.json" "%url%?api_key=%apikey%"

timeout /t 30