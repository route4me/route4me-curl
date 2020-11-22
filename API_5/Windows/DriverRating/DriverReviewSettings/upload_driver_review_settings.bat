@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/driver-reviews/settings/upload

SET apikey=11111111111111111111111111111111

:: The example refers to the process of uploading the driver review settings to the account.

ECHO ON

curl -o upload_driver_review_settings_RESPONSE.json -g -X POST -k -H "accept: application/json" -H "Content-Type: application/json" -d "@upload_driver_review_settings_data.json" %base_url%%endpoint%?api_key=%apikey%"

timeout /t 30