@ECHO OFF

SET url=https://api.route4me.com/api.v4/order.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: The example demonstrates process of creating an order with a custom user field by sending HTPP POST data.

curl -o create_order_with_custom_field_RESPONSE.json -g -k -X POST -H "Content-Type: application/json" -d "@create_order_with_custom_field_data.json" "%url%?api_key=%apikey%"

timeout /t 30