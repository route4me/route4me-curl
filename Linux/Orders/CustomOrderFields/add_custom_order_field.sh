#!/bin/bash

url=https://api.route4me.com/api.v4/order_custom_user_fields.php
apikey=11111111111111111111111111111111

# The example demonstrates process of creating a custom order user field by sending HTPP POST data.

curl -o add_custom_order_field_RESPONSE.json -k -g -X POST -H "Content-Type: application/json" -d "@add_custom_order_field_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
