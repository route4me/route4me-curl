#!/bin/bash

url=https://api.route4me.com/actions/upload/csv-xls-geocode.php
apikey=11111111111111111111111111111111
upload_id=b2130b5fc36ae1109ef63b6db73781f6

curl -o file1.txt -g -k -X POST "$url?api_key=$apikey&strUploadID=$upload_id" 

# In more complex case, yo can define valid and ignore column names:

# curl -o file1.txt -g -k -X POST -d "@upload_file_geocoding_data.json" "$url?api_key=$apikey&strUploadID=$upload_id" 

echo "Finished..."

sleep 15
