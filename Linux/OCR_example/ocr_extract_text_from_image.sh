#!/bin/bash

url=http://199.193.112.174/ImageUpload/AddImage
apikey=11111111111111111111111111111111
filename="scanned_addresses.jpg"

# Example refers to the process of extracting text from an image using Route4Me OCR service

curl -o file1.txt -g -k -X POST -F "fileInput=@$filename" "$url?api_key=$apikey" 

echo "Finished..."

sleep 15