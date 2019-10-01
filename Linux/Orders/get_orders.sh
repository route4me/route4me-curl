#!/bin/bash

url=https://api.route4me.com/api.v4/order.php
apikey=11111111111111111111111111111111
offset=0
limit=7

# The example demonstrates the process of getting all orders.

curl -o get_orders_RESPONSE.json -k -X GET "$url?api_key=$apikey&offset=$offset&limit=$limit"

echo "Finished..."

sleep 15

