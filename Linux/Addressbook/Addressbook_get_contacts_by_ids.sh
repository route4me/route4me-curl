#!/bin/bash

url=https://api.route4me.com/api.v4/address_book.php
apikey=11111111111111111111111111111111

# The example refers to the process of getting the locations from an address book by list of location IDs.

addr_id=4623361,6281217

curl -o file1.txt -k -X GET "$url?api_key=$apikey&address_id=$addr_id"

echo "Finished..."

sleep 15
