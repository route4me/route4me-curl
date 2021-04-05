@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=C3FFCB38AF53270BF3F9F16FFD75C03B
SET rpo=Points
SET notes=1

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%&notes=%notes%"

timeout /t 30