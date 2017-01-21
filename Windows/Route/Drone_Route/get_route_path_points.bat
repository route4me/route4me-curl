@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=bd48828717021141485a701453273458
SET routeid=0F9998839A63C6905120963B654DFA4C
SET rpo=Points

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%"

timeout /t 30