#!/bin/bash

url=https://api.route4me.com/api.v4/territory.php
apikey=11111111111111111111111111111111
terid=63E27D8186AAE43F202CB97DECBFD826
addresses=1
orders=1

# The example refers to the process of getting Territory zone with covered addresses.

curl -o get_territory_with_addresses_orders_RESPONSE.json -g -k -X GET "$url?api_key=$apikey&territory_id=$terid&addresses=$addresses&orders=$orders"

echo "Finished..."

sleep 15
