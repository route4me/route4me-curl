@ECHO OFF

SET url=https://production-api-telematics.route4me.com/api

SET endpoint=/info/vehicle/
SET vehicleId=5d9cfc89e195103aba30737ecbdd3c28
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting the tracking info of a specified telematics vehicle

ECHO ON
curl -o get_vehicle_tracking_RESPONSE.json -H "Accept: text/html" -g -X GET -k "%url%%endpoint%%vehicleId%/track?api_token=%apikey%" 

timeout /t 30