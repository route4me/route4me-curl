ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/participants/
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg
SET participant_user_id=AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
SET telematic_connection_id=22222222222222222222222222222222

:: The example refers to the process of updating the name of a participant's telematics connection

ECHO ON

curl -o User_participant_tc_update_name_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -H "x-auth-token: %xAuthToken%" -g -k -X PUT -d "@User_participant_tc_update_name_data.json" "%url%%participant_user_id%/telematics-connection/%telematic_connection_id%"

timeout /t 30