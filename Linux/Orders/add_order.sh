#!/bin/bash

url=http://www.route4me.com/api.v4/order.php
apikey=11111111111111111111111111111111

# The example demonstrates process of adding an address to the order by sending HTPP POST data.

curl -o file1.txt -g -X POST -H "Content-Type: application/json" -d "@add_order_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15