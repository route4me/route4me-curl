#!/bin/bash

url=http://api.route4me.com/api.v4/address_book.php
apikey=11111111111111111111111111111111

# The example refers to the process of getting routed contacts from an address book.
# The parameter <display> has 3 possible values: [all, routed, unrouted].

display="routed"

curl -o file1.txt -X GET "$url?api_key=$apikey&display=$display"

echo "Finished..."

sleep 15
