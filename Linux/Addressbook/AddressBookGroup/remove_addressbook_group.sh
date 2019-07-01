#!/bin/bash

# The example refers to the process of removing an address book group from a user's account.

url=https://api.route4me.com/api.v4/address_book_group.php
apikey=11111111111111111111111111111111

curl -o remove_addressbook_group_RESPONSE.json -g -k -X DELETE -H "Content-Type: application/json" -d "@remove_addressbook_group_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 30
