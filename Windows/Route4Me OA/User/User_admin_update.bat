ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/admins/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET admin_id=77777777777777777777777777777777

:: The example refers to the process of updating an admin

ECHO ON

curl -o User_admin_update_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X PUT -d "@User_admin_update_data.json" "%url%%admin_id%?api_key=%api_key%"

timeout /t 30