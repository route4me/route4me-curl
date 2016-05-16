#!/bin/bash

url=http://www.route4me.com/api.v4/address_book.php
apikey=11111111111111111111111111111111


curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@address_data_for_update.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
