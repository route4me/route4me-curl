ECHO OFF
SET url=http://api.route4me.com/api.v4/order.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: The example demonstrates the process of getting all orders.

curl -o file1.txt -X GET "%url%?api_key=%apikey%"

timeout /t 30