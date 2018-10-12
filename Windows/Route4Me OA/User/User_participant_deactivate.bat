ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/participants/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET participant_id=FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF

:: The example refers to the process of activating/deactivating of a participant

ECHO ON

curl -o User_participant_deactivate_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X PATCH -d "@User_participant_deactivate_data.json" "%url%%participant_id%?api_key=%api_key%"

timeout /t 30