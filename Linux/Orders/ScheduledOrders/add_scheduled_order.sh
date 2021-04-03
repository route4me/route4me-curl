#!/bin/bash

url=https://api.route4me.com/api.v4/order.php
apikey=11111111111111111111111111111111

# The example demonstrates process of creating a scheduled order by sending HTPP POST data.

curl -o add_scheduled_order_RESPONSE.json -k -g -X POST -H "Content-Type: application/json" -d "@add_scheduled_order_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
