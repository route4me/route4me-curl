@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/driver-reviews/settings/get

SET tracking_number=ZE19REZV


SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting the driver review settings.

ECHO ON

curl -o get_driver_review_settings_RESPONSE.json -g -X GET -k "%base_url%%endpoint%?api_key=%apikey%&tracking_number=%tracking_number%"

timeout /t 30
