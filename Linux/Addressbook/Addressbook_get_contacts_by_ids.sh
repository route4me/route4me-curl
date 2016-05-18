#!/bin/bash

url=https://www.route4me.com/api.v4/address_book.php
apikey=11111111111111111111111111111111

# Get contacts by listed ids

addr_id=4623361,6281217

curl -o file1.txt -k -X GET "$url?api_key=$apikey&address_id=$addr_id"

echo "Finished..."

sleep 15
