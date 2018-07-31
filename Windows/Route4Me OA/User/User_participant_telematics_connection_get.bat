ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/participants/
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg
SET participant_user_id=AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
SET telematic_connection_id=22222222222222222222222222222222

:: The example refers to the process of getting participant's telematics connection

ECHO ON

curl -o User_participant_telematics_connection_get_RESPONSE.json -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X GET  "%url%%participant_user_id%/telematics-connection/%telematic_connection_id%"

timeout /t 30