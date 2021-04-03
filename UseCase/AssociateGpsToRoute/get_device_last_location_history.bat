@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111

:: route_id is not real - put real value

SET routeid=CEF9073F2C7BD79D967895A88E07F863

ECHO ON

curl -o file1.txt -k -g -X GET "%URL%?route_id=%routeid%&api_key=%apikey%&device_tracking_history=1" 

timeout /t 30