#!/bin/bash

url=https://www.route4me.com/actions/webinar_register.php
apikey=11111111111111111111111111111111

# The example refers to the process of registering on the Route4Me webinar.

curl -o file1.txt -g -k -X POST -d "@webinar_registration_data.json" "$url?api_key=$apikey" 

echo "Finished..."

sleep 15
