ECHO OFF

:: Please, put real values in the parameter api_key
SET url=https://oa.route4me.com/api/v1/feed/event/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET event_id=44444444444444444444444444444444

:: The example refers to the process of getting an activity feed event by event_id

ECHO ON

curl -o Feed_activity_event_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%%event_id%?api_key=%api_key%"

timeout /t 30