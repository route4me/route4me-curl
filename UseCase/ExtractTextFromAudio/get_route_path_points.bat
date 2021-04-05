@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=7FE9E1F17371A76869EB808C1CB619AB
SET rpo=Points
SET notes=1

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%&notes=%notes%"

timeout /t 30