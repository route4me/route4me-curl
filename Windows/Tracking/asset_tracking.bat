@ECHO OFF
:: asset_id is not real value in query parameter - put real value
SET url=https://www.route4me.com/api/asset/find_route.php
SET apikey=11111111111111111111111111111111
SET query=2121541

ECHO ON

curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%&query=%query%"

timeout /t 30