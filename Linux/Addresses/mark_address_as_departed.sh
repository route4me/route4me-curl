#!/bin/bash

url=https://api.route4me.com/api/route/mark_address_departed.php
apikey=11111111111111111111111111111111
routeid=5C15E83A4BE005BCD1537955D28D51D7
addressid=160940135
departed=1
member=1

# The example refers to the process of marking an address as departed.
# is_departed=1 means address was marked as departed.

curl -o file1.txt -g -k -X PUT "$url?api_key=$apikey&route_id=$routeid&address_id=$addressid&is_departed=$departed=$departed&member_id=$member"

echo "Finished..."

sleep 15
