ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/participants/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET participant_id=FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF

:: The example refers to the process of updating a participant

ECHO ON

curl -o User_participant_update_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X PUT -d "@User_participant_update_data.json" "%url%%participant_id%?api_key=%api_key%"

timeout /t 30