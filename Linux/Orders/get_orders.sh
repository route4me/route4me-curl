#!/bin/bash

url=http://api.route4me.com/api.v4/order.php
apikey=11111111111111111111111111111111

# The example demonstrates the process of getting all orders.

curl -o file1.txt -X GET "$url?api_key=$apikey"

echo "Finished..."

sleep 15
