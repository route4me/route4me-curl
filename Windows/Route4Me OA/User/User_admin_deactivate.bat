ECHO OFF

:: Please, put real values n the parameters originApiKey and authToken
SET url=https://oa.route4me.com/api/v1/user/admins/
SET admin_id=44444444444444444444444444444444


:: The example refers to the process of activating/deactivating an admin

ECHO ON

curl -o User_admin_deactivate_RESPONSE.json -H "Content-Type: application/json" -H "x-auth-token: eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg" -H "Accept: application/json" -g -k -X PATCH -d "@User_admin_deactivate_data.json" "%url%%admin_id%"

timeout /t 30