#!/bin/bash

url=https://www.route4me.com/api.v4/territory.php
apikey=11111111111111111111111111111111
terid1=083F0E34A2271FCAFA5476A364F32B4E

curl -o file1.txt -g -k -X DELETE "$url?api_key=$apikey&territory_id=$terid1"

echo "Finished..."

sleep 15
