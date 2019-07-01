#!/bin/bash

# The example refers to the process of getting limited number of the address book groups.

url=https://api.route4me.com/api.v4/address_book_group.php
apikey=11111111111111111111111111111111
offset=0
limit=10

curl -o get_addressbook_groups_RESPONSE.json -g -k -XGET "$url?api_key=$apikey&offset=$offset&limit=$limit"

echo "Finished..."

sleep 30
