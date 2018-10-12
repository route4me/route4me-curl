ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/members/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET members_id=888888


:: The example refers to the process of getting the devices of a member by parameter members_id

ECHO ON

curl -o User_member_devices_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%%members_id%/devices?api_key=%api_key%"

timeout /t 30