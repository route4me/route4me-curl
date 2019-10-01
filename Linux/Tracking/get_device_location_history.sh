#!/bin/bash

url=https://api.route4me.com/api/track/get_device_location.php
apikey=11111111111111111111111111111111
routeid=9117A37D138826D6A26E330197B7E638
time_period=all_time
format=json

# The example refers to the process of getting all location history of a GPS device.

curl -o get_device_location_history_RESPONSE.json -g -k -X GET "$url?route_id=$routeid&api_key=$apikey&time_period=$time_period&format=$format" 

echo "Finished..."

sleep 15
