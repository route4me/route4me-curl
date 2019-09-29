@ECHO OFF

SET url=https://production-api-telematics.route4me.com/api

SET apikey=11111111111111111111111111111111
SET member_id=17

:: The example refers to the process of registering a telematics vendor's account

ECHO ON
curl -o register_vendor_account_RESPONSE.json -H "Accept: text/html" -g -X GET -k "%url%?api_key=%apikey%&member_id=%member_id%&is_virtual=true" 

timeout /t 30