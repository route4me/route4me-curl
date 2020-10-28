@ECHO OFF

SET url=https://api.route4me.com/api/schedule_calendar_data.php
SET apikey=11111111111111111111111111111111
SET date_from_string="2020-10-20"
SET date_to_string="2020-11-20"
SET timezone_offset_minutes=-240
SET orders=1
SET ab=1
SET routes_count=1

:: The example refers to the process of getting the schedule calendar.
:: The example requires an API key with the enterprise subscription.

ECHO ON

curl -o get_schedule_calendar_RESPONSE.json -g -k -X GET "%url%?route_id=%routeid%&api_key=%apikey%&date_from_string=%date_from_string%&date_to_string=%date_to_string%&timezone_offset_minutes=%timezone_offset_minutes%&orders=%orders%&ab=%ab%&routes_count=%routes_count%"

timeout /t 30