@ECHO OFF

:: You should insert real test data and your API key for accurate testing

SET url=https://api.route4me.com/api/get_activities.php
SET apikey=11111111111111111111111111111111
SET routeid=5C15E83A4BE005BCD1537955D28D51D7
SET act_type=delete-destination

ECHO ON
curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%&route_id=%routeid%&activity_type=%act_type%"

timeout /t 30