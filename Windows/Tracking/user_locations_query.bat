@ECHO OFF

SET url=https://api.route4me.com/api/track/view_user_locations.php
SET apikey=11111111111111111111111111111111
SET query=918515

:: Example refers to the process of getting user locations by query.
:: Note: you can query by member_id, user email, member_type etc.

ECHO ON

curl -o user_locations_query_RESPONSE.json -k -g -X GET "%url%?api_key=%apikey%&query=%query%" 

timeout /t 30