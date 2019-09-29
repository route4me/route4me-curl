ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/members/devices/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET device_id=77777777777777777777777777777777


:: The example refers to the process of getting a member's device

ECHO ON

curl -o User_member_device_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%%device_id%?api_key=%api_key%"

timeout /t 30