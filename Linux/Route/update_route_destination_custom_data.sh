#!/bin/bash

url=http://www.route4me.com/api.v4/address.php

# You should insert real test data and your API key for accurate testing

apikey=11111111111111111111111111111111
routeid=5C15E83A4BE005BCD1537955D28D51D7
routedestinationid=160940135

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@update_route_destination_custom_data.json" "$url?api_key=$apikey&route_id=$routeid&route_destination_id=$routedestinationid"

echo "Finished..."

sleep 15
