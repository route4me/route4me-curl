@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=32F63FD03B08A5754CF2D516198FC8BA

:: The example refers to the process of getting the last location history of a GPS device.

ECHO ON

curl -o file1.txt -k -g -X GET "%url%?route_id=%routeid%&api_key=%apikey%&device_tracking_history=1" 

timeout /t 30