#!/bin/bash

url=https://api.route4me.com/api.v4/order.php
apikey=11111111111111111111111111111111

# The example demonstrates process of updating an order with a custom user field by sending HTPP PUT data.

curl -o update_order_with_custom_field_RESPONSE.json -k -g -X PUT -H "Content-Type: application/json" -d "@update_order_with_custom_field_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
