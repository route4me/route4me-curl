@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=D1DF6BAF991E3CDC00134C28D27AEC12

:: The example refers to the process of getting a route by sending HTTP parameters.

ECHO ON

curl -o view_single_route_RESPONSE.json -g -k -X GET "%URL%?route_id=%routeid%&api_key=%apikey%&notes=1" 

timeout /t 30