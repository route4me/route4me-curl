ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/telematics-connections
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET start=1
SET length=3
SET draw=1

:: The example refers to the process of assigning the technical parameter draw to the telematics connections

ECHO ON

curl -o User_teleamtics_connections_draw_RESPONSE.json -H "Accept: application/json" -g -k -X POST -F "start=%start%" -F "length=%length%" -F "draw=%draw%" "%url%?api_key=%api_key%"

timeout /t 30