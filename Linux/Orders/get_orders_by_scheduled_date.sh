#!/bin/bash

url=https://api.route4me.com/api.v4/order.php
apikey="11111111111111111111111111111111"

# The example refers to the process of retrieving orders scheduled for a specified date by sending HTTP POST data.

curl -o get_orders_by_scheduled_date_RESPONSE.json -g -k -X POST -d "@get_orders_by_scheduled_date_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
