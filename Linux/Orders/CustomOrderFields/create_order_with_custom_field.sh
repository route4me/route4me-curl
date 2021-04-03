#!/bin/bash

url=https://api.route4me.com/api.v4/order.php
apikey=11111111111111111111111111111111

# The example demonstrates process of creating an order with a custom user field by sending HTPP POST data.

curl -o create_order_with_custom_field_RESPONSE.json -k -g -X POST -H "Content-Type: application/json" -d "@create_order_with_custom_field_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
