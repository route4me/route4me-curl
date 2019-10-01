@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET "start_date=2019-08-01"
SET "end_date=2019-08-05"

:: The example refers to the process of getting the routes scheduled for the specified date range.

ECHO ON
curl -o get_routes_from_date_range_RESPONSE.json -g -k -X GET "%url%?api_key=%apikey%&start_date=%start_date%&end_date=%end_date%" 

timeout /t 30