@ECHO OFF

:: You should insert real test data and your API key for accurate testing

:: Example refers to the process of getting all activities by a member

SET url=https://api.route4me.com/api/get_activities.php
SET apikey=11111111111111111111111111111111
SET member_id=888888

ECHO ON
curl -o get_activities_by_member_RESPONSE.json -g -k -X GET "%URL%?api_key=%apikey%&member_id=%member_id%"

timeout /t 30