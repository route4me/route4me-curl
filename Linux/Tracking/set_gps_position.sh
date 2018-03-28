#!/bin/bash

url=https://api.route4me.com/track/set.php
apikey=11111111111111111111111111111111
membid=1
route_id=114B01238180A4227FD187E128C056F5
course=70
speed=60
lat=55.6884868
lng=12.5366426
devtype=android_phone
devguid="HK5454H0K454564WWER445"

# The example refers to the process of setting GPS position of a device by sending HTTP parameters.
# There are also several optional parameters: tx_id, vehicle_id altitude, device_timestamp, app_version

curl -o file1.txt -g -X POST -k "$url?api_key=$apikey&member_id=$membid&route_id=$route_id&course=$course&speed=$speed&lat=$lat&lng=$lng&device_type=$devtype&device_guid=$devguid"

echo "Finished..."

sleep 15
