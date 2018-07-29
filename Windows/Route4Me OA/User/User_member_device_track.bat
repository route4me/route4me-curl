ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/members/devices/
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg
SET device_id=77777777777777777777777777777777


:: The example refers to the process of getting the device track

ECHO ON

curl -o User_member_device_track_RESPONSE.json -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X GET  "%url%%device_id%/track"

timeout /t 30