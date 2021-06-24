@ECHO OFF
SET url=https://api.route4me.com/api/track/get_device_location.php
SET apikey=11111111111111111111111111111111

SET routeid=9117A37D138826D6A26E330197B7E638
SET time_period=all_time

:: See other parameters at: https://github.com/route4me/route4me-json-schemas/blob/master/TrackingHistory_request.json

ECHO ON

curl -o get_device_location_history_RESPONSE.json -k -g -X GET "%URL%?route_id=%routeid%&api_key=%apikey%&format=json&time_period=%time_period%" 

timeout /t 30