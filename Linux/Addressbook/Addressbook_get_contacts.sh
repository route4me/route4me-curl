#!/bin/bash

url=http://api.route4me.com/api.v4/address_book.php
apikey=11111111111111111111111111111111

# The example refers to the process of getting limited number of the locations from an address book belonged to an user.

curl -o file1.txt -X GET "$url?api_key=$apikey&offset=0&limit=10"

echo "Finished..."

sleep 15
