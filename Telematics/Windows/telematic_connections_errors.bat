@ECHO OFF

SET url=https://production-api-telematics.route4me.com/api

SET endpoint=/errors
SET apikey=11111111111111111111111111111111
SET page=1
SET limit=20

:: The example refers to the process of getting the connections errors.

ECHO ON
curl -o telematics_connection_errors_RESPONSE.json -H "Accept: text/html" -g -X GET -k "%url%%endpoint%?api_token=%apikey%&page=%page%&limit=%limit%" 

timeout /t 30