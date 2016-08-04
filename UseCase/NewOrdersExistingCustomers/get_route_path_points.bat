@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=1D479A8464677D9FC054EB7D00B046D2
SET routeid=8EC394C7D9639F694314D87ADAD1EDC8
SET rpo=Points

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%"

timeout /t 30