#!/bin/bash

url=https://api.route4me.com/actions/authenticate.php
apikey=11111111111111111111111111111111

# Example refers to the process of autentication into the Route4Me's offciial web application

curl -o file1.txt -k -g -X POST  -H "Content-Type: multipart/form-data;" -F "strEmail=dddd@yahoo.com" -F "strPassword=1111111" -F "format=json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
