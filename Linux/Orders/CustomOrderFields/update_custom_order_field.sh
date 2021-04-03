#!/bin/bash

url=https://api.route4me.com/api.v4/order_custom_user_fields.php
apikey=11111111111111111111111111111111

# The example demonstrates process of updating a custom order user field by sending HTPP PUT data.

curl -o update_custom_order_field_RESPONSE.json -k -g -X PUT -H "Content-Type: application/json" -d "@update_custom_order_field_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
