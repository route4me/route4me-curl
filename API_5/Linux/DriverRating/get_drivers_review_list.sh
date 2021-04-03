#!/bin/bash

base_url=https://wh.route4me.com/modules/api/v5.0
endpoint=/driver-reviews

apikey=11111111111111111111111111111111

page=0
per_page=20
start="2020-01-01"
end="2020-12-30"

# The example refers to the process of getting the drivers rating.

curl -o get_drivers_review_list_RESPONSE.json -g -X GET -k "$base_url$endpoint?api_key=$apikey&page=$page&per_page=$per_page&start=$start&end=$end"

echo "Finished..."

sleep 15
