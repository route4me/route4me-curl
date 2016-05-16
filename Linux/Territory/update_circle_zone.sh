#!/bin/bash

url=https://www.route4me.com/api.v4/territory.php
apikey=11111111111111111111111111111111
terid1=F540DE7E2698FFA9217AE4C147D94259
terid2=AE1B175E3AB12746125075DF8A088DC4

curl -o file1.txt -g -k -X PUT -d "@update_circle_zone_data.json" "$url?api_key=$apikey&territory_id=$terid1&territory_id=$terid2"

echo "Finished..."

sleep 15
