#!/bin/bash

url=https://www.route4me.com/api.v4/address_book.php
apikey=11111111111111111111111111111111

# Example demostrates search for all Addressbook contacts, any specified fields which of contains search_text value. The result will contain only fields listed in the parameter 'fields'

search_text="david"
fields="first_name,address_email"
offset=0
limit=20

curl -o file1.txt -k -X GET "$url?api_key=$apikey&query=$search_text&fields=$fields&offset=$offset&limit=$limit"

echo "Finished..."

sleep 15
