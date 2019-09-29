ECHO OFF

SET url=https://api.route4me.com/api.v4/order.php
SET apikey=11111111111111111111111111111111
SET offset=0
SET limit=7

ECHO ON

:: The example demonstrates the process of getting all orders.

curl -o get_orders_RESPONSE.json -g -k -X GET "%url%?api_key=%apikey%&offset=%offset%&limit=%limit%"

timeout /t 30