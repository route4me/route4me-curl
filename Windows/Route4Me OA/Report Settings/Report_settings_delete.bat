ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/report/settings/
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg
SET user_id=7F9590B72CCccccccccccccccccccccc


:: The example refers to the process of deleting the report settings

ECHO ON

curl -o Report_settings_delete_RESPONSE.json -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X DELETE  "%url%?user_id=%user_id%"

timeout /t 30