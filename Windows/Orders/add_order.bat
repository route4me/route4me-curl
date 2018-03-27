@ECHO OFF

SET url=https://api.route4me.com/api.v4/order.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: The example demonstrates process of creating an order by sending HTPP POST data

curl -o file1.txt -k -g -X POST -H "Content-Type: application/json" -d "@add_order_data.json" "%url%?api_key=%apikey%"

timeout /t 30