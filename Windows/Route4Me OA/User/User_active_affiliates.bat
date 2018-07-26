ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/affiliates/active
SET xAuthToken=111111111111111111111111111111111111.222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.333333333-44444444444444444444444444444-555


:: The example refers to the process of getting the active affiliates

ECHO ON

curl -o User_active_affiliates_RESPONSE.json -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X GET  "%url%"

timeout /t 30