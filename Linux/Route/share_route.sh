#!/bin/bash

url=https://www.route4me.com/actions/route/share_route.php
apikey=11111111111111111111111111111111
routeid=3A2DD89E6E1A044B2098AD1313E3138C
frmt=json

# will work only in OS with email provider

curl -o file1.txt -g -X POST -k -d 'email_for_route_sharing.json' "$url?api_key=$apikey&route_id=$routeid&response_format=$frmt" 

echo "Finished.."

sleep 15
