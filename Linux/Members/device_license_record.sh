#!/bin/bash

url=https://www.route4me.com/api/device/verify_device_license.php
apikey=11111111111111111111111111111111

# Create and Verify Mobile Device License Record

curl -o file1.txt -g -X POST -k -d "@device_license_record_data.json" "$url?api_key=$apikey" 

echo "Finished..."

sleep 15
