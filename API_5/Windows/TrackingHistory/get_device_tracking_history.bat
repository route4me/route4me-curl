@ECHO OFF

:: You should insert real test data and your API key for accurate testing

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/gps
SET apikey=11111111111111111111111111111111
SET format=json
SET deviceId=546546516
SET vehicle_id=421FD43A280C41A99463645A438096A7

ECHO ON
curl -o get_device_tracking_history_RESPONSE.json -g -k -X GET "%base_url%%endpoint%?api_key=%apikey%&format=%format%&vehicle_id=%vehicle_id%"

timeout /t 30