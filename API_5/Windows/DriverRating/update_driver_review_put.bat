@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/driver-reviews

SET apikey=11111111111111111111111111111111

SET rating_id=5555555555555

:: The example refers to the process of updating an existing driver review.

ECHO ON

curl -o update_driver_review_RESPONSE.json -g -X PUT -k -H "accept: application/json" -H "Content-Type: application/json" -d "@update_driver_review_data.json" %base_url%%endpoint%/%rating_id%?api_key=%apikey%"

timeout /t 30