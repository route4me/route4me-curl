#!/bin/bash

url=https://api.route4me.com/api.v4/order_custom_user_fields.php
apikey=11111111111111111111111111111111

# The example demonstrates process of geting all the custom order user fields by sending HTPP query request.

curl -o get_custom_order_fields_RESPONSE.json -k -g -X GET "$url?api_key=$apikey"

echo "Finished..."

sleep 15
