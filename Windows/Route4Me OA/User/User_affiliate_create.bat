ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/admins
SET xAuthToken=111111111111111111111111111111111111.222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.333333333-44444444444444444444444444444-555

:: The example refers to the process of creating a new affiliate

ECHO ON

curl -o User_affiliate_create_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -H "x-auth-token: %xAuthToken%" -g -k -X POST -d "@User_affiliate_create_data.json" "%url%"

timeout /t 30