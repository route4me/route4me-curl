ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/participants/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET participant_user_id=AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

:: The example refers to the process of creating connection to a telematics vendor

ECHO ON

curl -o User_participant_telematics_connection_create_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X POST -d "@User_participant_telematics_connection_create_data.json" "%url%%participant_user_id%/telematics-connection?api_key=%api_key%"

timeout /t 30