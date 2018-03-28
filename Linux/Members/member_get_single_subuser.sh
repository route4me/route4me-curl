#!/bin/bash

url=https://api.route4me.com/api.v4/user.php
apikey=11111111111111111111111111111111
member_id=45844

# The example refers to the process of getting an existing sub-user.

curl -o file1.txt -g -X GET -k "$url?api_key=$apikey&member_id=$member_id"

echo "Finished..."

sleep 15
