ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/members/devices/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET device_id=0013311c7b7954509999999999999999
SET timestamp=1534195390


:: The example refers to the process of getting a stop from the device by timestamp.

ECHO ON

curl -o User_member_device_stop_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%%device_id%/stops/%timestamp%?api_key=%api_key%"

timeout /t 30