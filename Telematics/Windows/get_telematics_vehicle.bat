@ECHO OFF

SET url=https://production-api-telematics.route4me.com/api

SET endpoint=/info/vehicle/
SET vehicleId=5d9cfc89e195103aba30737ecbdd3c28
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting a specified telematics vehicle.

ECHO ON
curl -o get_telematics_vehicle_RESPONSE.json -H "Accept: text/html" -g -X GET -k "%url%%endpoint%%vehicleId%?api_token=%apikey%" 

timeout /t 30