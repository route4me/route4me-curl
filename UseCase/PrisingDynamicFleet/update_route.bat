@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=4B3431CDBFECD1A6949C9C9B8475F5A3
SET opt_type=Time
SET disable_optimization=0

ECHO ON

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/json" -d "@update_route_data.json" "%url%?api_key=%apikey%&route_id=%routeid%&disable_optimization=%disable_optimization%&optimize=%opt_type%"

timeout /t 30
