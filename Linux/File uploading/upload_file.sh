#!/bin/bash

url=https://api.route4me.com/actions/upload/upload.php
apikey=11111111111111111111111111111111
filename="10-Stops-MultiDepotSmall.csv"

curl -o file1.txt -g -k -X POST -F "strFilename=@$filename" "$url?api_key=$apikey&format=json" 

echo "Finished..."

sleep 15
