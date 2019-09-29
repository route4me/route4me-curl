@ECHO OFF

SET url=https://wh.route4me.com/modules/api/vehicles

SET apikey=11111111111111111111111111111111
SET vehicle_id=D81F0A4E11BA589A2390999999999999

:: The example refers to the process of updating a vehicle.

ECHO ON

curl -o update_vehicle_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -X PUT -k -d "@update_vehicle_data.json" "%url%%vehicle_id%?api_key=%apikey%"

timeout /t 30