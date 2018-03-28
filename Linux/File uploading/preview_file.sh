#!/bin/bash

url=https://api.route4me.com/actions/upload/csv-xls-preview.php
apikey=11111111111111111111111111111111
format=json
upload_id=b2130b5fc36ae1109ef63b6db73781f6

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey&strUploadID=$upload_id&format=json" 

echo "Finished..."

sleep 15
