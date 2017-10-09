@ECHO OFF

SET url=https://production-api-telematics.route4me.com/api

SET endpoint=/connections/
SET apitoken=11111111111111111111111111111111
SET member_id=17

:: The example refers to the process of getting telematics connection's vehicles

ECHO ON
curl -o get_telematics_connections_vehicles_RESPONSE.json -H "Accept: text/html" -g -X GET -k "%url%%endpoint%%apitoken%/vehicles" 

timeout /t 30