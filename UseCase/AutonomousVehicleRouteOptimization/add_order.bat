@ECHO OFF

SET url=https://www.route4me.com/api.v4/order.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: The example refers to the process of creating an order by sending HTPP POST data

curl -o file1.txt -k -g -X POST -H "Content-Type: application/json" -d "@add_order_data.json" "%url%?api_key=%apikey%"

timeout /t 30