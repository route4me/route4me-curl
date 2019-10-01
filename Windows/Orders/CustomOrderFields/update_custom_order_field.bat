@ECHO OFF

SET url=https://api.route4me.com/api.v4/order_custom_user_fields.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: The example demonstrates process of updating a custom order field by sending HTPP PUT data.

curl -o update_custom_order_field_RESPONSE.json -g -k -X PUT -H "Content-Type: application/json" -d "@update_custom_order_field_data.json" "%url%?api_key=%apikey%"

timeout /t 30