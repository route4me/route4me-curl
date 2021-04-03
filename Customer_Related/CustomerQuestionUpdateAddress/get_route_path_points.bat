@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=bd48828717021141485a701453273458
SET routeid=11111111111111111111111111111111
SET rpo=Points
SET notes=1

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%&notes=%notes%"

timeout /t 30