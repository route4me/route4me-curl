@ECHO OFF

SET url=https://production-api-telematics.route4me.com/api

SET endpoint=/connections/
SET apitoken=11111111111111111111111111111111
SET member_id=17

:: The example refers to the process of resynchronizing of the telematics vehicles

ECHO ON
curl -o resync_telematics_vehicles_RESPONSE.json -H "Accept: text/html" -g -X GET -k "%url%%endpoint%%apitoken%/vehicles/resync" 

timeout /t 30