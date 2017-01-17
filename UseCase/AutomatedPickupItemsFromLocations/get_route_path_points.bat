@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=BD48828717021141485A701453273458
SET routeid=0092301EE6B55D085DBFAF52FAE74A87
SET rpo=Points

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%&notes=1"

timeout /t 30