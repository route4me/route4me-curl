@ECHO OFF

SET url=https://api.route4me.com/api.v4/order_custom_user_fields.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: The example demonstrates process of retrieving the custom order fields by sending HTPP GET data.

curl -o get_custom_order_fields_RESPONSE.json -g -k -X GET "%url%?api_key=%apikey%"

timeout /t 30