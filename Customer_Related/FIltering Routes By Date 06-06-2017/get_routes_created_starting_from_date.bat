@ECHO OFF

:: Example refers to the process of getting routes created after the specified time.

SET url=https://www.route4me.com/api/get_activities.php
SET apikey=11111111111111111111111111111111
SET offset=0
SET limit=50
SET start=1495238400
SET act_type=route-optimized

ECHO ON
curl -o get_routes_created_starting_from_date_RESPONSE.json -g -k -X GET "%url%?api_key=%apikey%&offset=%offset%&limit=%limit%&activity_type=%act_type%&start=%start%"

timeout /t 30