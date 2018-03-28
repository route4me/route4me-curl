#!/bin/bash

url=https://api.route4me.com/api.v4/user.php
apikey=11111111111111111111111111111111

# The example refers to the process of removing an existing sub-user from a member's account

curl -o file1.txt -g -X DELETE -d "@member_delete_data.json" -k "$url?api_key=$apikey"

echo "Finished..."

sleep 15
