#!/bin/bash

url=https://api.route4me.com/api.v4/configuration-settings.php
apikey=11111111111111111111111111111111
config_key=destination_icon_width

# The example refers to the process of getting a specified single configuration key data.

curl -o file1.txt -g -X GET -k "$url?api_key=$apikey&config_key=$config_key"

echo "Finished..."

sleep 15
