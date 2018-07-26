ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/affiliates/
SET xAuthToken=111111111111111111111111111111111111.222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.333333333-44444444444444444444444444444-555
SET affiliate_id=55555555555555555555555555555555


:: The example refers to the process of getting the affiliate information

ECHO ON

curl -o User_affiliate_info_RESPONSE.json -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X GET  "%url%%affiliate_id%"

timeout /t 30