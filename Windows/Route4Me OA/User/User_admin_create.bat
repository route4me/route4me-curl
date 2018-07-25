ECHO OFF

:: Please, put real values n the parameters originApiKey and authToken
SET url=https://oa.route4me.com/api/v1/user/admins
SET authToken=111111111111111111111111111111111111.222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.333333333-44444444444444444444444444444-555

:: The example refers to the process of creating a new admin

ECHO ON

curl -o User_admin_create_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X POST -d "@User_admin_create_data.json" "%url%?auth_token=%authToken%"

timeout /t 30