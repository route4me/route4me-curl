#!/bin/bash

url=https://api.route4me.com/api.v4/address_book.php
apikey=11111111111111111111111111111111

# The example refers to the process of updating of an exising location in an address book.

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@update_scheduled_addressbook_contact_data.json" "$url?api_key=$apikey" 

echo "Finished..."

sleep 15
