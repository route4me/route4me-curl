@ECHO OFF
SET url=http://api.route4me.com/api.v4/order.php
SET apikey=11111111111111111111111111111111
SET orderid=7205711

ECHO ON

:: The example demonstrates the process of getting an order by order_id sent with HTTP GET

curl -o file1.txt -g -X GET "%URL%?api_key=%apikey%&order_id=%orderid%"

timeout /t 30
