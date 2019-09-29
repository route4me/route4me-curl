@ECHO OFF

SET url=http://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET rdirect=0
SET routeid=CEAA81617489EC7F8972372F6248946D

ECHO ON

:: The example demonstrates process of adding an order to the route by sending HTPP PUT data

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@add_order_to_route_data.json" "%url%?api_key=%apikey%&redirect=%rdirect%&route_id=%routeid"

timeout /t 30