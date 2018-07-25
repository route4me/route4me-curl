ECHO OFF

:: Please, put real values n the parameters originApiKey and authToken
SET url=https://oa.route4me.com/api/v1/user/admins/active


:: The example refers to the process of getting the active users (admins)

ECHO ON

curl -o User_active_admins_RESPONSE.json -H "x-auth-token: eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg" -H "Accept: application/json" -g -k -X GET  "%url%"

timeout /t 30