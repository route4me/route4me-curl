ECHO OFF
SET url=http://www.route4me.com/api.v4/order.php
SET apikey=11111111111111111111111111111111

:: Example demostrates the process of searching all Orders with specified custom fields.

SET "fields=order_id,member_id"

ECHO ON

curl -o file1.txt -X GET "%url%?api_key=%apikey%&fields=%fields%&offset=0&limit=20"

timeout /t 30