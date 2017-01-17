@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=BD48828717021141485A701453273458
SET routeid=05A3F0C552A2CD50107DBD36D40FC8C5
SET rpo=Points

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%"

timeout /t 30