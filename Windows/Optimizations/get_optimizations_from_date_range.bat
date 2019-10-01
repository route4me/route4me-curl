@ECHO OFF

SET url=https://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET "start_date=2019-10-16"
SET "end_date=2019-10-20"

:: The example refers to the process of getting the optimizations scheduled for the specified date range.

ECHO ON
curl -o get_optimizations_from_date_range_RESPONSE.json -g -X GET -k "%url%?api_key=%apikey%&start_date=%start_date%&end_date=%end_date%" 

timeout /t 30
