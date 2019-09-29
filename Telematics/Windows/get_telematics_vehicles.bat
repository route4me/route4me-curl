@ECHO OFF

SET url=https://production-api-telematics.route4me.com/api

SET endpoint=/info/vehicles
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting available telematics vehicles.

ECHO ON
curl -o get_telematics_vehicles_RESPONSE.json -H "Accept: text/html" -g -X GET -k "%url%%endpoint%?api_token=%apikey%" 

timeout /t 30