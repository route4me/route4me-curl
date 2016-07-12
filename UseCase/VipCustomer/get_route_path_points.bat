@ECHO OFF
SET url=http://www.route4me.com
SET apikey=11111111111111111111111111111111
SET routeid=BD9E024C21820FE9B28B6B8B7B6C3462
SET rpo=Points

ECHO ON

curl -o file1.txt -g -X GET "%URL%/api.v4/route.php?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%"

timeout /t 30