#!/bin/bash

url=https://www.route4me.com/api.v4/avoidance.php
apikey=11111111111111111111111111111111
terid=33C1D8EA0B3078B6238626259FBA914F

curl -o file1.txt -g -k -X PUT -d '@update_circle_zone_data.json' "$url?api_key=$apikey&territory_id=$terid"

echo "Finished..."

sleep 15
