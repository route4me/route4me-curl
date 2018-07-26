ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/affiliates
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg

:: The example refers to the process of getting the all affiliates list

ECHO ON

curl -o User_all_affiliates_RESPONSE.json -H "Accept: application/json" -H "x-auth-token: %xAuthToken%" -g -k -X GET  "%url%"

timeout /t 30