ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/admins/
SET admin_id=44444444444444444444444444444444
SET api_key=1111111111111111111111111111111111111111111111111111111111111111

:: The example refers to the process of activating/deactivating an admin

ECHO ON

curl -o User_admin_deactivate_RESPONSE.json -H "Accept: application/json" -g -k -X PATCH -d "@User_admin_deactivate_data.json" "%url%%admin_id%?api_key=%api_key%"

timeout /t 30