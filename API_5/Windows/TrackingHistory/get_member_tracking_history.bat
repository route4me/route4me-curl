@ECHO OFF

:: You should insert real test data and your API key for accurate testing

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/tracking-history/export
SET apikey=11111111111111111111111111111111
SET format=json
SET member_id=1

ECHO ON
curl -o get_member_tracking_history_RESPONSE.json -g -k -X GET "%base_url%%endpoint%?api_key=%apikey%&format=%format%&member_id=%member_id%"

timeout /t 30