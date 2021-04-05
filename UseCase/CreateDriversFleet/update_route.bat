@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php

SET apikey=11111111111111111111111111111111
SET routeid=43F55835F1E76003FF980547F77338BD

ECHO ON

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/json" -d "@update_route_data.json" "%url%?route_id=%routeid%&api_key=%apikey%"

timeout /t 30