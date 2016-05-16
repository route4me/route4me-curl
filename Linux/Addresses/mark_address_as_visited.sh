#!/bin/bash

url=https://www.route4me.com/api/address/update_address_visited.php
apikey=11111111111111111111111111111111
routeid=5C15E83A4BE005BCD1537955D28D51D7
addressid=160940135
visited=1

# is_visited=1 means address visited, is_visited=0 --- not visited
# returns message 'File not found' - needs clarification

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey&route_id=$routeid&address_id=$addressid&is_visited=$visited"

echo "Finished..."

sleep 15
