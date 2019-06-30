#!/bin/bash

# The example refers to the process of searching for the locations by a group ID.

url=https://api.route4me.com/api/address_book/get_search_group_addresses.php
apikey=11111111111111111111111111111111

curl -o get_addressbook_by_group_RESPONSE.json -g -k -XPOST -H "Content-Type: application/json" -d "@get_addressbook_by_group_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 30
