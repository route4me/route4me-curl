@ECHO OFF

SET url=https://production-api-telematics.route4me.com/api

SET endpoint=/connections
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting available telematics connections.

ECHO ON
curl -o show_telematics_connection_accounts_RESPONSE.json -H "Accept: text/html" -g -X GET -k "%url%%endpoint%?api_token=%apikey%" 

timeout /t 30