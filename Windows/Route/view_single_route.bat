@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=824CA521E3A8DE9F1C684C8BAE90CF07

:: The example refers to the process of getting a route by sending HTTP parameters.

ECHO ON

curl -o file1.txt -g -k -X GET "%URL%?route_id=%routeid%&api_key=%apikey%" 

timeout /t 30