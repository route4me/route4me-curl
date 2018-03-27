@ECHO OFF

SET url=http://api.route4me.com/api.v4/order.php
SET apikey=11111111111111111111111111111111
SET "sdate=2016-06-15"

ECHO ON

:: The example refers to the process of retrieving orders inserted on a specified date by sending HTTP GET data

curl -o file1.txt -g -X GET "%URL%?api_key=%apikey%&day_added_YYMMDD=%sdate%"

timeout /t 30
