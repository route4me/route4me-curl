#!/bin/bash

url=https://api.route4me.com/api.v4/user.php
apikey=11111111111111111111111111111111

# The example refers to the process of adding/editing custom data to an existing user account.

curl -o member_edit_custom_data_RESPONSE111.json -g -X PUT -d "@member_edit_custom_data_data.json" -k "$url?api_key=$apikey"

echo "Finished..."

sleep 15
