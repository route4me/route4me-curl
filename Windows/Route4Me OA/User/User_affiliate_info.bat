ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/affiliates/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET affiliate_id=55555555555555555555555555555555

:: The example refers to the process of getting the affiliate information

ECHO ON

curl -o User_affiliate_info_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%%affiliate_id%?api_key=%api_key%"

timeout /t 30