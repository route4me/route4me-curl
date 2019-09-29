#!/bin/bash

url=http://api.route4me.com/api.v4/order.php
apikey=11111111111111111111111111111111

# The example refers to the process of getting specified custom fields of all Orders.

fields="order_id,member_id"

curl -o file1.txt -X GET "$url?api_key=$apikey&fields=$fields&offset=0&limit=20"

echo "Finished..."

sleep 15
