#!/bin/bash

url=http://www.route4me.com/api.v4/route.php
apikey=11111111111111111111111111111111
routeid=5C15E83A4BE005BCD1537955D28D51D7
reoptimize=1

# Example demonstrates the process of reoptimization existing route by sendinf of GET and POST data.

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@reoptimize_route_data.json" "$url?route_id=$routeid&api_key=$apikey&reoptimize=$reoptimize"

echo "Finished..."

sleep 15