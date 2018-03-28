#!/bin/bash

url=https://api.route4me.com/api.v4/route.php
apikey=11111111111111111111111111111111
routeid="270CB108F227AD6E11827FC08EE4E2D7,C340E3F6AF28E20EFAE0FBE51759C338"

# The example refers to the process of removing the specified routes by sending their IDs with HTTP DELETE method.

curl -o file1.txt -g -k -X DELETE "$url?api_key=$apikey&route_id=$routeid" 

echo "Finished..."

sleep 15
