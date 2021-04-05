@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET route_id=05A3F0C552A2CD50107DBD36D40FC8C5

ECHO ON

:: The example refers to the process of inserting an existed order into an existed route by sending HTPP POST data

curl -o file1.txt -k -g -X PUT -H "Content-Type: application/json" -d "@add_order_to_route_data.json" "%url%?api_key=%apikey%&route_id=%route_id%"

timeout /t 30