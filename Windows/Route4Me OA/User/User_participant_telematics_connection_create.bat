ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/participants/
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg
SET participant_user_id=AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

:: The example refers to the process of creating connection to a telematics vendor

ECHO ON

curl -o User_participant_telematics_connection_create_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -H "x-auth-token: %xAuthToken%" -g -k -X POST -d "@User_participant_telematics_connection_create_data.json" "%url%%participant_user_id%/telematics-connection"

timeout /t 30