#!/bin/bash

url=https://api.route4me.com/api.v4/address_book.php
apikey=11111111111111111111111111111111

# The example refers to the process of getting limited number of the addressbook contacts, any specified fields which of contains searched text.
# The successful response will contain only fields listed in the parameter 'fields'

search_text="david"
fields="first_name,address_email"
offset=0
limit=20

curl -o file1.txt -k -X GET "$url?api_key=$apikey&query=$search_text&fields=$fields&offset=$offset&limit=$limit"

echo "Finished..."

sleep 15
