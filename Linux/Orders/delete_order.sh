#!/bin/bash

url=https://api.route4me.com/api.v4/order.php
apikey=11111111111111111111111111111111

# The example demonstrates process of deleting an order by sending HTPP DELETE data

curl -o file1.txt -g -X DELETE -H "Content-Type: application/json" -d "@delete_order_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15