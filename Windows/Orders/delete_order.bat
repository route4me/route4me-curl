@ECHO OFF

SET url=https://api.route4me.com/api.v4/order.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: The example demonstrates process of deleting an order by sending HTPP DELETE data

curl -o file1.txt -g -k -X DELETE -H "Content-Type: application/json" -d "@delete_order_data.json" "%url%?api_key=%apikey%"

timeout /t 30
