ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/report/settings/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET user_id=7F9590B72CCccccccccccccccccccccc


:: The example refers to the process of getting the report settings

ECHO ON

curl -o Report_settings_get_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%?api_key=%api_key%&user_id=%user_id%"

timeout /t 30