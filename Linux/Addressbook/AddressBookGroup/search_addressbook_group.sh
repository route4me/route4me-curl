#!/bin/bash

# The example refers to the process of searching for the locations by sending JSON payload.

url=https://api.route4me.com/api.v4/address_book.php
apikey=11111111111111111111111111111111

curl -o search_addressbook_group_RESPONSE.json -g -k -XPOST -H "Content-Type: application/json" -d "@search_addressbook_group_data.json" "$url?api_key=$apikey&app_version=835"

echo "Finished..."

sleep 30
