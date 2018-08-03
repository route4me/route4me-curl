ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/report/settings/
SET xAuthToken=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJFQkE3OTQzNTREQzg0N0UzQkMxOUFFRTQ5Q0Y0QUIxQiIsImV4cCI6MTUzMzc0NDI4NSwiaWF0IjoxNTMzMTM5NDg1fQ.bpScknYa4B9XcGa-P6zoeIzMTdT2N1wBgm-B434peZk
SET user_id=7F9590B72CC941A49CD5348FE6002E04


:: The example refers to the process of deleting the report settings

ECHO ON

curl -o Report_settings_delete_RESPONSE.json -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X GET  "%url%?user_id=%user_id%"

timeout /t 30