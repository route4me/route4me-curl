@ECHO OFF

SET url=https://www.route4me.com/actions/duplicate_route.php
SET apikey=11111111111111111111111111111111
SET routeid=32587465EAA62D7412F9C37EF786C0AE

ECHO ON
curl -o file1.txt -g -k -X GET "%url%?api_key=%apikey%&route_id=%routeid%&to=none" 

timeout /t 30