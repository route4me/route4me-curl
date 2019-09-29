@ECHO OFF

SET url=http://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=79E68E967815A31F63EA77D947442B46
SET rpo=Points

:: The example refers to the process of getting a route with the path points.

ECHO ON

curl -o file1.txt -g -X GET "%url%?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%"

timeout /t 30