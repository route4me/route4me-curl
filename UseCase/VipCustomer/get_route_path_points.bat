@ECHO OFF
SET url=http://www.route4me.com
SET apikey=11111111111111111111111111111111
SET routeid=119326E5DB8F489CE29ABFE76B129A5B
SET rpo=Points

ECHO ON

curl -o file1.txt -g -X GET "%URL%/api.v4/route.php?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%"

timeout /t 30