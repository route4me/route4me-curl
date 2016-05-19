#!/bin/bash

url=https://www.route4me.com/api.v4/avoidance.php
apikey=11111111111111111111111111111111

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey"

echo "FInished..."

sleep 15

