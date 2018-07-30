ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/participants/
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg
SET participant_id=FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF


:: The example refers to the process of activating/deactivating of a participant

ECHO ON

curl -o User_participant_deactivate_RESPONSE.json -H "Content-Type: application/json" -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X PATCH -d "@User_participant_deactivate_data.json" "%url%%participant_id%"

timeout /t 30