ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/affiliates/
SET xAuthToken=111111111111111111111111111111111111.222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.333333333-44444444444444444444444444444-555
SET affiliate_id=55555555555555555555555555555555

:: The example refers to the process of updating an affiliate

ECHO ON

curl -o User_affiliate_update_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -H "x-auth-token: %xAuthToken%" -g -k -X PUT -d "@User_affiliate_update_data.json" "%url%%affiliate_id%"

timeout /t 30