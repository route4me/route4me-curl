#!/bin/bash

url=https://www.route4me.com/api.v4/address_book.php
apikey=11111111111111111111111111111111

# Example demostrates search for all Addressbook contacts, any specified fields which of contains search_text value
# Fields are listed in json file

search_text="david"
offset=0
limit=20

curl -o file1.txt -k -X GET -d "@Addressbook_get_specified_field_contains_specified_text_data.json" "$url?api_key=$apikey&query=$search_text&offset=$offset&limit=$limit"

echo "Finished..."

sleep 15
