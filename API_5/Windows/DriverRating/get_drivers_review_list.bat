@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/driver-reviews

SET page=0
SET per_page=20
SET start="2020-01-01"
SET end="2020-12-30"


SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting the drivers rating list.

ECHO ON

curl -o get_drivers_review_list_RESPONSE.json -g -X GET -k "%base_url%%endpoint%?api_key=%apikey%&page=%page%&per_page=%per_page%&start=%start%&end=%end%"

timeout /t 30
