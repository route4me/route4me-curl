#!/bin/bash

url=http://api.route4me.com/api.v4/address_book.php
apikey=11111111111111111111111111111111

# The example refers to the process of getting all Addressbook contacts, any field which of contains searched text - except of metadata fields.

search_text="technology"
offset=0
limit=20

curl -o file1.txt -X GET "$url?api_key=$apikey&query=$search_text&offset=$offset&limit=$limit"

echo "Finished..."

sleep 15
