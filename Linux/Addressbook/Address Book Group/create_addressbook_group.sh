#!/bin/bash

# The example refers to the process of creating address book group.

url=https://www.route4me.com/api.v4/address_book_group.php
apikey=11111111111111111111111111111111

curl -o create_addressbook_group_RESPONSE.json -g -k -X POST -H "Content-Type: application/json" -d "@create_addressbook_group_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 30
