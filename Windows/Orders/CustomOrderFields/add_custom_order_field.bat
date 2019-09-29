@ECHO OFF

SET url=https://api.route4me.com/api.v4/order_custom_user_fields.php
SET apikey=bd48828717021141485a701453273458

ECHO ON

:: The example demonstrates process of adding a custom order field by sending HTPP POST data.

curl -o add_custom_order_field_RESPONSE.json -g -k -X POST -H "Content-Type: application/json" -d "@add_custom_order_field_data.json" "%url%?api_key=%apikey%"

timeout /t 30