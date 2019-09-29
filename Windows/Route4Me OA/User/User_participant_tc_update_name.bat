ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/participants/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET participant_user_id=AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
SET telematic_connection_id=22222222222222222222222222222222

:: The example refers to the process of updating the name of a participant's telematics connection

ECHO ON

curl -o User_participant_tc_update_name_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X PUT -d "@User_participant_tc_update_name_data.json" "%url%%participant_user_id%/telematics-connection/%telematic_connection_id%?api_key=%api_key%"

timeout /t 30