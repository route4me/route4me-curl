#!/bin/bash

url=http://www.route4me.com/api.v3/route/reoptimize_2.php
apikey=11111111111111111111111111111111
routeid=5C15E83A4BE005BCD1537955D28D51D7
disopt=0
optimize=Distance

curl -o file1.txt -g -X GET "$url?api_key=$apikey&route_id=$routeid&disable_optimization=$disopt&optimize=$optimize"

echo "Finished..."

sleep 15
