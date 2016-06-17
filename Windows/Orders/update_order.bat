@ECHO OFF

SET url=http://www.route4me.com/api.v4/order.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: The example demonstrates the process of updating an order by sending the parameters with HTTP PUT

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@update_order_data.json" "%url%?api_key=%apikey%"

timeout /t 30