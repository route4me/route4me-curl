#!/bin/bash

url=https://api.route4me.com/api.v4/avoidance.php
apikey=11111111111111111111111111111111

# The example refers to the process of getting all avoidance zones from an user account.

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey"

echo "FInished..."

sleep 15

