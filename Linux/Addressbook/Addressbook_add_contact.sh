#!/bin/bash

# The example refers to the process of creating new location in an address book belonged to an user.

url=http://api.route4me.com/api.v4/address_book.php
apikey=11111111111111111111111111111111

curl -o file1.txt -g -X POST -H "Content-Type: application/json" -d "@new_address_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 30
