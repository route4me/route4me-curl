#!/bin/bash

url=https://api.route4me.com/api.v4/user.php
apikey=11111111111111111111111111111111

# The example refers to the process of creating a sub-user in a member's account

curl -o file1.txt -g -H "Content-Type: application/json" -X POST -d "@member_create_v4_data.json" -k "$url?api_key=$apikey"

echo "Finished..."

sleep 15
