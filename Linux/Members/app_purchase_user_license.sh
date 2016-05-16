#!/bin/bash

url=https://www.route4me.com/api/member/user_license.php
apikey=11111111111111111111111111111111

curl -o file1.txt -g -X POST -k -d "@app_purchase_user_license_data.json" "$url?api_key=$apikey" 

echo "Finished..."

sleep 15
