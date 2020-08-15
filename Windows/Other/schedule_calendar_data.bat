@ECHO OFF

:: You should insert real test data and your API key for accurate testing

SET url=https://api.route4me.com/api/schedule_calendar_data.php

SET apikey=11111111111111111111111111111111

SET date_from_string=2020-07-26
SET date_to_string=2020-09-06
SET timezone_offset_minutes=-240
SET orders=1
SET ab=1
SET routes_count=1

ECHO ON

curl -o schedule_calendar_data_RESPONSE.json -g -k -X GET "%url%?api_key=%apikey%&date_from_string=%date_from_string%&date_to_string=%date_to_string%&timezone_offset_minutes=%timezone_offset_minutes%&orders=%orders%&ab=%ab%&routes_count=%routes_count%"

timeout /t 30