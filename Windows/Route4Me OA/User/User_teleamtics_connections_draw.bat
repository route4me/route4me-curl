ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/telematics-connections
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg
SET start=1
SET length=3
SET draw=1


:: The example refers to the process of assigning the technical parameter draw to the telematics connections

ECHO ON

curl -o User_teleamtics_connections_draw_RESPONSE.json -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X POST -F "start=%start%" -F "length=%length%" -F "draw=%draw%" "%url%"

timeout /t 30