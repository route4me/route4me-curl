ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/participants/non-active
SET api_key=1111111111111111111111111111111111111111111111111111111111111111

:: The example refers to the process of getting the non-active participants

ECHO ON

curl -o User_non_active_participants_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%?api_key=%api_key%"

timeout /t 30