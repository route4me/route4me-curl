@ECHO OFF

:: You should insert real test data and your API key for accurate testing

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/activity/feed

SET apikey=11111111111111111111111111111111

SET offset=0
SET limit=40

ECHO ON
curl -o get_activities_all_RESPONSE.json -g -k -X GET "%base_url%%endpoint%?api_key=%apikey%&offset=%offset%&limit=%limit%"

timeout /t 30