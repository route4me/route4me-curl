#!/bin/bash

url=http://api.route4me.com/api.v4/order.php
apikey=11111111111111111111111111111111

# The example demonstrates the process of updating an order by sending the parameters with HTTP PUT method

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@update_order_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
