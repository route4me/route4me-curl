#!/bin/bash

url=http://www.route4me.com/api.v4/route.php
apikey=11111111111111111111111111111111

# route_id is not real - put real value
routeid=fgfg4f56g4fd54gfdgdfgf4654

curl -o file1.txt -g -X GET "$url?route_id=$routeid&api_key=$apikey&device_tracking_history=1" 

echo "Finished..."

sleep 15
