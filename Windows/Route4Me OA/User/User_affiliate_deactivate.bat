ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/affiliates/
SET xAuthToken=111111111111111111111111111111111111.222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.333333333-44444444444444444444444444444-555
SET affiliate_id=55555555555555555555555555555555


:: The example refers to the process of activating/deactivating an affiliate

ECHO ON

curl -o User_affiliate_deactivate_RESPONSE.json -H "Content-Type: application/json" -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X PATCH -d "@User_affiliate_deactivate_data.json" "%url%%affiliate_id%"

timeout /t 30