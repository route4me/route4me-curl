#!/bin/bash

url=http://api.route4me.com/api.v4/order.php
apikey=11111111111111111111111111111111
orderid=7205711

# The example demonstrates the process of getting an order by order_id sent with HTTP GET

curl -o file1.txt -g -X GET "$url?api_key=$apikey&order_id=$orderid"

echo "Finished..."

sleep 15
