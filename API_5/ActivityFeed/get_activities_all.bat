@ECHO OFF

:: You should insert real test data and your API key for accurate testing

SET url=https://wh.route4me.com/modules/api/v5.0/activity/feed
SET apikey=11111111111111111111111111111111
SET start=0
SET end=0
SET offset=0
SET limit=40

ECHO ON
curl -o get_activities_all_RESPONSE.json -g -k -X GET "%URL%?offset=%offset%&limit=%limit%&start=%start%&end=%end%"

timeout /t 30