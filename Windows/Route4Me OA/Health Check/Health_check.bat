ECHO OFF

:: Please, put the real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/health/check
SET api_key=1111111111111111111111111111111111111111111111111111111111111111

:: The example refers to the process of checking of the system health

ECHO ON

curl -o Health_check_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%?api_key=%api_key%"

timeout /t 30