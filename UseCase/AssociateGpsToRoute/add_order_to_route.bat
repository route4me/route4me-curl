@ECHO OFF

SET url=https://route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET rdirect=0
SET routeid=714D9C6F22000A7D8F1B7625B2A58861

ECHO ON

:: The example refers to teh process of adding an order to a route by sending HTPP PUT data

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/x-www-form-urlencoded" -d "@add_order_to_route_data.json" "%url%?api_key=%apikey%&redirect=%rdirect%&route_id=%routeid"

timeout /t 30