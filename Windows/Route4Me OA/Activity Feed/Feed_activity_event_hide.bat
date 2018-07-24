ECHO OFF

:: Please, put real values n the parameters originApiKey and authToken
SET url=https://oa.route4me.com/api/v1/feed/event/
SET originApiKey=55555555555555555555555555555555
SET authToken=111111111111111111111111111111111111.222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.333333333-44444444444444444444444444444-555
SET event_id=44444444444444444444444444444444
SET hide=true

:: The example refers to the process of hiding/unhiding an activity feed event

ECHO ON

curl -o Feed_activity_event_hide_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%%event_id%?original_api_key=%originApiKey%&auth_token=%authToken%&hide=%hide%"

timeout /t 30