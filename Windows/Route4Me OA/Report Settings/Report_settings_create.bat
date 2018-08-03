ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/report/settings/
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg

:: The example refers to the process of creating the new reports settings

ECHO ON

curl -o Report_settings_create_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -H "x-auth-token: %xAuthToken%" -g -k -X POST -d "@Report_settings_create_data.json" "%url%"

timeout /t 30