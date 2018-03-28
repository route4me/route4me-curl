#!/bin/bash

url=https://api.route4me.com/actions/route/share_route.php
apikey=11111111111111111111111111111111
routeid=3A2DD89E6E1A044B2098AD1313E3138C
frmt=json

# Example refers to the process of shearing a route by email

curl -o file1.txt -g -X POST -k -H "Content-Type: multipart/form-data;" -F "recipient_email=oooooo@gmail.com" "$url?api_key=$apikey&route_id=$routeid&response_format=$frmt" 

echo "Finished.."

sleep 15
