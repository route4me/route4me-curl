@ECHO OFF

SET url=https://api.route4me.com/api.v4/order.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: The example refers to the process of retrieving orders scheduled for a specified date by sending HTTP POST data

curl -o get_orders_by_scheduled_date_RESPONSE.json -g -k -X POST -d "@get_orders_by_scheduled_date_data.json" "%url%?api_key=%apikey%"

timeout /t 30
