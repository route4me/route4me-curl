@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/driver-reviews

SET rating_id=5fba24c1d4c3d


SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting a driver rating by rating_id.

ECHO ON

curl -o get_driver_rating_byid_RESPONSE.json -g -X GET -k "%base_url%%endpoint%/%rating_id%?api_key=%apikey%"

timeout /t 30
