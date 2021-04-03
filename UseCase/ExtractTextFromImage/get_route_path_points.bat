@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=D68AAF9C015D8AA4A138583453CE90EB
SET rpo=Points
SET notes=1

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%&notes=%notes%"

timeout /t 30