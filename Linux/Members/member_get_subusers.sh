#!/bin/bash

url=https://www.route4me.com/api/member/view_users.php
apikey=11111111111111111111111111111111

# View existing sub-users in a Member's account

curl -o file1.txt -g -X GET -k "$url?api_key=$apikey"

echo "Finished..."

sleep 15
