@ECHO OFF

:: Example refers to the process of getting all insert-destination activities

SET url=https://api.route4me.com/api/get_activities.php
SET apikey=11111111111111111111111111111111
SET routeid=87B8873BAEA4E09942C68E2C92A9C4B7
SET act_type=insert-destination

ECHO ON
curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%&route_id=%routeid%&activity_type=%act_type%"

timeout /t 30