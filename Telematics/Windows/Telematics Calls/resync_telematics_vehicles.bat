@ECHO OFF

SET url=https://production-api-telematics.route4me.com/api

SET endpoint=/connections/
SET connectionToken=22222222222222222222222222222222
SET apiToken=11111111111111111111111111111111

:: The example refers to the process of resynchronizing of the telematics vehicles

ECHO ON
curl -o resync_telematics_vehicles_RESPONSE.json -H "Accept: text/html" -g -X GET -k "%url%%endpoint%%connectionToken%/vehicles/resync?api_token=%apiToken%" 

timeout /t 30