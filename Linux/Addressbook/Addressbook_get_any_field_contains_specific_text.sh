#!/bin/bash

url=http://www.route4me.com/api.v4/address_book.php
apikey=11111111111111111111111111111111

# Example demostrates search for all Addressbook contacts, any field which of contains search_text value - except of metadata fields 

search_text="technology"
offset=0
limit=20

curl -o file1.txt -X GET "$url?api_key=$apikey&query=$search_text&offset=$offset&limit=$limit"

echo "Finished..."

sleep 15
