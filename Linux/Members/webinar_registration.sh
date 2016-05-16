#!/bin/bash

url=https://www.route4me.com/actions/webinar_register.php
apikey=11111111111111111111111111111111

# This task requires email provider

curl -o file1.txt -g -k -X POST -d "@webinar_registration_data.json" "$url?api_key=$apikey" 

echo "Finished..."

sleep 15
