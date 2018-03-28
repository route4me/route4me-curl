#!/bin/bash

url=https://api.route4me.com/api/track/get_device_location.php
apikey=11111111111111111111111111111111
routeid=814FB49CEA8188D134E9D4D4B8B0DAF7
time_period=custom

start=$(date -d"2016-10-20T00:00" +%s)
end=$(date -d"2016-10-26T23:59" +%s)

# The example refers to the process of getting last location history of a device during the specified time range by sending HTTP parameters.
# See other parameters at: https://github.com/route4me/route4me-json-schemas/blob/master/TrackingHistory_request.dtd

curl -o file1.txt -k -g -X GET "$url?route_id=$routeid&api_key=$apikey&format=json&time_period=$time_period&start_date=$start&end_date=$end"

echo "Finished..."

sleep 15
