@ECHO OFF

SET url=https://api.route4me.com/api/track/view_user_locations.php
SET apikey=11111111111111111111111111111111

:: Example refers to the process of getting all user locations.

ECHO ON

curl -o user_locations_get_all_RESPONSE.json -k -g -X GET "%URL%?route_id=%routeid%&api_key=%apikey%" 

timeout /t 30