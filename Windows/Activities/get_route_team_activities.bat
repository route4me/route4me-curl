@ECHO OFF

:: You should insert real test data and your API key for accurate testing

SET url=https://api.route4me.com/api/get_activities.php
SET apikey=11111111111111111111111111111111
SET route_id=06B655F27E0D6A74BD37F6F9758E4D2E
SET team=true

:: Example refers to the process of getting team activities on a route

ECHO ON
curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%&route_id=%route_id%&team=%team%"

timeout /t 30