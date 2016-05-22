#!/bin/bash

url=http://www.route4me.com
apikey=11111111111111111111111111111111
routeid=5C15E83A4BE005BCD1537955D28D51D7
directions=1

curl -o file1.txt -g -X GET "$url/api.v4/route.php?route_id=$routeid&api_key=$apikey&directions=$directions"

echo "Finished..."

sleep 15
