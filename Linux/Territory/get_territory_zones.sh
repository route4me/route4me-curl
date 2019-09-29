#!/bin/bash

url=https://api.route4me.com/api.v4/territory.php
apikey=11111111111111111111111111111111

# The example refers to the process of getting the territory zones from an user's account.

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey"

echo "Finished..."

sleep 15
