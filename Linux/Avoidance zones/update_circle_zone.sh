#!/bin/bash

url=https://www.route4me.com/api.v4/avoidance.php
apikey=11111111111111111111111111111111
terid1=1AA62406364DF6C830FF5B6BCCB6B721
terid2=30AB54EFCA2388E8D0C57D99B624DFAA

curl -o file1.txt -g -k -X PUT -d '@update_circle_zone_data.json' "$url?api_key=$apikey&territory_id=$terid1&territory_id=$terid2"

echo "Finished..."

sleep 15
