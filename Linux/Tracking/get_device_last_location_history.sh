#!/bin/bash

url=http://api.route4me.com/api.v4/route.php
apikey=11111111111111111111111111111111
routeid=32F63FD03B08A5754CF2D516198FC8BA

# The example refers to the process of getting the last location history of a GPS device.

curl -o file1.txt -g -X GET "$url?route_id=$routeid&api_key=$apikey&device_tracking_history=1" 

echo "Finished..."

sleep 15
