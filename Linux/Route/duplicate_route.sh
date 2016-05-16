#!/bin/bash

url=https://www.route4me.com/actions/duplicate_route.php
apikey=11111111111111111111111111111111
routeid=C963990B11B6E3BB0648C0195E683EF0
to=none

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey&route_id=$routeid&to=$to"

echo "Finished..."

sleep 15
