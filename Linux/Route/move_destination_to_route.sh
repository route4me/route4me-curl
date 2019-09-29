#!/bin/bash

url=https://api.route4me.com/actions/route/move_route_destination.php
apikey=11111111111111111111111111111111

# Recipient route ID
trid=BAD35EEE32BFF8E20C2077AC53761BC7

# The destination to be moved
rdi=184611093

# The destination ID in a recipient route, after which will be inserted moving destination.
adi=184611074

# The example refers to the process of moving an address into a route after specified address.

curl -o file1.txt -g -X POST -k -H "Content-Type: multipart/form-data;" -F "to_route_id=$trid" -F "route_destination_id=$rdi" -F "after_destination_id=$adi" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
