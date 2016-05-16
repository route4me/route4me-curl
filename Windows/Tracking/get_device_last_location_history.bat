@ECHO OFF
SET url=http://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
:: route_id is not real - put real value
SET routeid=fgfg4f56g4fd54gfdgdfgf4654

ECHO ON

curl -o file1.txt -g -X GET "%URL%?route_id=%routeid%&api_key=%apikey%&device_tracking_history=1" 

timeout /t 30