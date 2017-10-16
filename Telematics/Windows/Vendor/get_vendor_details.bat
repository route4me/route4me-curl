@ECHO OFF

SET url=https://production-api-telematics.route4me.com/api

SET endpoint=/vendors
SET apiToken=11111111111111111111111111111111
SET vendor_id=2

:: The example refers to the process of getting all the available telematics vendors.

ECHO ON
curl -o get_vendor_details_RESPONSE.json -H "Accept: text/html" -g -X GET -k "%url%%endpoint%/%vendor_id%?api_token=%apiToken%" 

timeout /t 30