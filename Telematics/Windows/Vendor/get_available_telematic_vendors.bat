@ECHO OFF

SET url=https://production-api-telematics.route4me.com/api

SET endpoint=/vendors
SET apiToken=11111111111111111111111111111111

:: The example refers to the process of getting all the available telematics vendors.

ECHO ON
curl -o get_available_telematic_vendor_RESPONSE.json -H "Accept: text/html" -g -X GET -k "%url%%endpoint%?api_token=%apiToken%" 

timeout /t 30