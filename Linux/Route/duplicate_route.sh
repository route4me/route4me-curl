#!/bin/bash

url=https://api.route4me.com/actions/duplicate_route.php
apikey=11111111111111111111111111111111
routeid=C963990B11B6E3BB0648C0195E683EF0
to=none

# The example refers to the process of making duplicate of a route.

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey&route_id=$routeid&to=$to"

echo "Finished..."

sleep 15
