@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=D39DB8A0E6E3F1E666AC2D313D8AC5D2
SET rpo=Points

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%"

timeout /t 30