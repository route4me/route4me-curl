#!/bin/bash

url=https://www.route4me.com/actions/register_action.php
apikey=11111111111111111111111111111111

# This task requires email provider

curl -o file1.txt -g -k -X POST -d "@new_account_registration_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
