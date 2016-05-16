#!/bin/bash

url=http://www.route4me.com/actions/authenticate.php
apikey=11111111111111111111111111111111

# This task requires email provider

curl -o file1.txt -g -X POST -d "@member_authenticate_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
