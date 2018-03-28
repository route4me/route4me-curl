#!/bin/bash

url=https://api.route4me.com/api.v4/avoidance.php
apikey=11111111111111111111111111111111
terid=33C1D8EA0B3078B6238626259FBA914F

# The example refers to the process of updating an avoidance zone by sending HTTP parameters.

curl -o file1.txt -g -k -X PUT -d '@update_circle_zone_data.json' "$url?api_key=$apikey&territory_id=$terid"

echo "Finished..."

sleep 15
