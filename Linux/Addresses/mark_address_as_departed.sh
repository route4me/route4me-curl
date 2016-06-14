#!/bin/bash

url=https://www.route4me.com/api/route/mark_address_departed.php
apikey=11111111111111111111111111111111
routeid=5C15E83A4BE005BCD1537955D28D51D7
addressid=160940135
departed=1

# is_departed=1 means address was departed, is_departed=0 --- not departed

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey&route_id=$routeid&address_id=$addressid&is_departed=$departed=1"

echo "Finished..."

sleep 15
