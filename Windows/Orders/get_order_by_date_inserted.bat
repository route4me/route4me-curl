@ECHO OFF
SET url=http://www.route4me.com/api.v4/order.php
SET apikey=33383266363136302D623934312D3131
SET "sdate=2016-06-15"

ECHO ON

:: The example demonstrates the process of retirieving orders inserted on a specified date sent with HTTP GET

curl -o file1.txt -g -X GET "%URL%?api_key=%apikey%&day_added_YYMMDD=%sdate%"

timeout /t 30
