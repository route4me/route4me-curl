#!/bin/bash

url=https://api.route4me.com/api.v4/territory.php
apikey=11111111111111111111111111111111
terid1=083F0E34A2271FCAFA5476A364F32B4E

# The example refers to the process of removing a territory zone from an user's account.

curl -o file1.txt -g -k -X DELETE "$url?api_key=$apikey&territory_id=$terid1"

echo "Finished..."

sleep 15
