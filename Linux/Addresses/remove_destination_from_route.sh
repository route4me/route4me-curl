#!/bin/bash

url=https://www.route4me.com/api.v4/address.php
apikey=11111111111111111111111111111111
routeid=5C15E83A4BE005BCD1537955D28D51D7
routedestinationid=160955262

curl -o file1.txt -g -X DELETE -k "$url?api_key=$apikey&route_id=$torouteid&route_destination_id=$routedestinationid"

echo "Finished.."

sleep 15
