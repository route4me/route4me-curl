@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/order-custom-user-fields

SET apikey=11111111111111111111111111111111

ECHO ON

:: The example demonstrates process of retrieving the custom order fields by sending HTPP GET data.

curl -o get_custom_order_fields_RESPONSE.json -g -k -X GET "%base_url%%endpoint%?api_key=%apikey%"

timeout /t 30