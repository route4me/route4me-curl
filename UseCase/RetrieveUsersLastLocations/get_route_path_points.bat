@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=9E9F431F3409C88336C228B7BF1CAAFC
SET rpo=Points

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%"

timeout /t 30