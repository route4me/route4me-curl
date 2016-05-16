#!/bin/bash

# route_id and member_id are not real values - put real values

url=https://www.route4me.com/track/set.php
apikey=11111111111111111111111111111111
frm=XML
membid=545554
route_id=gh4gf54hg5fh4fg56hf4g6h5gttyt
course=70
speed=60
lat=55.6884868
lng=12.5366426
devtype=android_phone
devguid=qweqweqwe

# There are also several optional parameters: tx_id, vehicle_id altitude, device_timestamp, app_version

curl -o file1.txt -g -X GET -k "$url?api_key=$apikey&format=$frm&member_id=$membid&route_id=$route_id&course=$course&speed=$speed&lat=$lat&lng=$lng&device_type=$devtype&device_guid=$devguid"

echo "Finished..."

sleep 15
