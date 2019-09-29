#!/bin/bash

url=https://api.route4me.com/api.v4/user.php
apikey=11111111111111111111111111111111

# The example refers to the process of updating an existing user account.

curl -o file1.txt -g -X PUT -d "@member_edit_data.json" -k "$url?api_key=$apikey"

echo "Finished..."

sleep 15
