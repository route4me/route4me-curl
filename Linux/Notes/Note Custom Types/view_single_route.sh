#!/bin/bash

url=https://api.route4me.com/api.v4/route.php

apikey=11111111111111111111111111111111
routeid=D1DF6BAF991E3CDC00134C28D27AEC12

# The example refers to the process of getting a route by sending HTTP parameters.

curl -o view_single_route_RESPONSE.json -g -k -X GET "$url?api_key=$apikey&route_id=$routeid&notes=1"

echo "Finished..."

sleep 15
