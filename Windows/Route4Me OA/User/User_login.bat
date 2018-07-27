ECHO OFF

SET url=https://oa.route4me.com/api/v1/user/login

:: The example refers to the process of login to the system

ECHO ON

curl -o User_login_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X POST -d "@User_login_data.json" "%url%"

timeout /t 30