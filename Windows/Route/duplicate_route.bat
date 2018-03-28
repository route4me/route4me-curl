@ECHO OFF

SET url=https://api.route4me.com/actions/duplicate_route.php
SET apikey=11111111111111111111111111111111
SET routeid=C963990B11B6E3BB0648C0195E683EF0

:: The example refers to the process of making duplicate of a route.

ECHO ON
curl -o file1.txt -g -k "%url%?api_key=%apikey%&route_id=%routeid%&to=none" 

timeout /t 30