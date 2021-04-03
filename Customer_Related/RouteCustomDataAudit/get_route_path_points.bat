@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=1d479a8464677d9fc054eb7d00b046d2
SET routeid=DDA83093D7FEB4269710C4279CBB211F
SET rpo=Points

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%"

timeout /t 30