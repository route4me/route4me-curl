#!/bin/bash

# You should insert real test data and your API key for accurate testing

url=https://api.route4me.com/api/get_activities.php
apikey=11111111111111111111111111111111
offset=0
limit=20
start=1495238400

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey&offset=$offset&limit=$limit&start=$start"

echo "Finished..."

sleep 15
