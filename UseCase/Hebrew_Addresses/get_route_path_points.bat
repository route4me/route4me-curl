@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=1d479a8464677d9fc054eb7d00b046d2
SET routeid=00B929FD5BC38668AF4038F34CF7EE43
SET rpo=Points

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%"

timeout /t 30