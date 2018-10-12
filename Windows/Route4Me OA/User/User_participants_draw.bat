ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/participants/plain
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET start=1
SET length=30
SET draw=1


:: The example refers to the process of assigning the technical parameter draw to the participants list

ECHO ON

curl -o User_participants_draw_RESPONSE.json -H "Accept: application/json" -g -k -X POST -F "start=%start%" -F "length=%length%" -F "draw=%draw%" "%url%?api_key=%api_key%"

timeout /t 30