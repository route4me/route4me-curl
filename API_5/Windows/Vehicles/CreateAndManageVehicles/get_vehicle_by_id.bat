@ECHO OFF

SET url=https://wh.route4me.com/modules/api/v5.0/vehicles
SET apikey=11111111111111111111111111111111
SET vehicle_id=AE350EF3153448665300F2C8216698C6

:: The example refers to the process of getting a vehicle by ID.

ECHO ON

curl -o get_vehicle_y_id_RESPONSE.json -g -X GET -k "%url%/%vehicle_id%?api_key=%apikey%"

timeout /t 30