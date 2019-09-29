#!/bin/bash

url=https://api.route4me.com/api.v4/configuration-settings.php
apikey=11111111111111111111111111111111

# The example refers to the process of getting all account configuration key data.

curl -o file1.txt -g -X GET -k "$url?api_key=$apikey"

echo "Finished..."

sleep 15
