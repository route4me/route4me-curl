@ECHO OFF

SET url=https://www.route4me.com/api.v4/order.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: The example demonstrates process of creating the scheduled orders with time windows by sending HTPP POST data

curl -o add_scheduled_order_RESPONSE_1.json -k -g -X POST -H "Content-Type: application/json" -d "@add_scheduled_order_data_1.json" "%url%?api_key=%apikey%"

START /WAIT curl -o add_scheduled_order_RESPONSE_2.json -k -g -X POST -H "Content-Type: application/json" -d "@add_scheduled_order_data_2.json" "%url%?api_key=%apikey%"

START /WAIT curl -o add_scheduled_order_RESPONSE_3.json -k -g -X POST -H "Content-Type: application/json" -d "@add_scheduled_order_data_3.json" "%url%?api_key=%apikey%"

timeout /t 30