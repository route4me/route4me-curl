ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/participants/
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg
SET participant_user_id=AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
SET telematic_connection_id=22222222222222222222222222222222

:: The example refers to the process of deleting a participant's connection to a telematics vendor

ECHO ON

curl -o User_participant_telematics_connection_delete_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -H "x-auth-token: %xAuthToken%" -g -k -X DELETE "%url%%participant_user_id%/telematics-connection/%telematic_connection_id%"

timeout /t 30