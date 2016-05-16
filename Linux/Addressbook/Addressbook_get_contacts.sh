#!/bin/bash

url=http://www.route4me.com/api.v4/address_book.php
apikey=11111111111111111111111111111111

curl -o file1.txt -X GET "$url?api_key=$apikey&offset=0&limit=10"

echo "Finished..."

sleep 15
