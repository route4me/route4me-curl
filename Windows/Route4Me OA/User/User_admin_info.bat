ECHO OFF

:: Please, put real values n the parameters originApiKey and authToken
SET url=https://oa.route4me.com/api/v1/user/admins/
SET admin_id=44444444444444444444444444444444


:: The example refers to the process of getting the user info by admin_id

ECHO ON

curl -o User_admin_info_RESPONSE.json -H "x-auth-token: eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg" -H "Accept: application/json" -g -k -X GET "%url%%admin_id%"

timeout /t 30