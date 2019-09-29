ECHO OFF

SET url=https://oa.route4me.com/api/v1/user/logout

:: The example refers to the process of logout from the system

ECHO ON

curl -o User_logout_RESPONSE.json -H "Accept: application/json" -g -k -X GET "%url%"

timeout /t 30