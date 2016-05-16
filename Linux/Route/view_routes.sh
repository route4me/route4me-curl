#!/bin/bash

url=http://www.route4me.com/api.v4/route.php
apikey=11111111111111111111111111111111
limit=20
offset=100

curl -o file1.txt -g -X GET "$url?api_key=$apikey&limit=$limit&offset=$offset" 

echo "Finished..."

sleep 15
