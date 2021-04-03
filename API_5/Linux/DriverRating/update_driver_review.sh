#!/bin/bash

base_url=https://wh.route4me.com/modules/api/v5.0
endpoint=/driver-reviews

rating_id=5fba24c1d4c3d

apikey=11111111111111111111111111111111

# The example refers to the process of updating an existing driver review.

curl -o update_driver_review_RESPONSE.json -g -X PATCH -k -H "accept: application/json" -H "Content-Type: application/json" -d "@update_driver_review_data.json" "$base_url$endpoint/$rating_id?api_key=$apikey"

echo "Finished..."

sleep 15
