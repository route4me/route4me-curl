#!/bin/bash

base_url=https://wh.route4me.com/modules/api/v5.0
endpoint=/driver-reviews

apikey=11111111111111111111111111111111

# The example refers to the process of uploading a driver review to the account.

curl -o upload_driver_review_RESPONSE.json -g -X POST -k -H "accept: application/json" -H "Content-Type: application/json" -d "@upload_driver_review_data.json" "$base_url$endpoint?api_key=$apikey"

echo "Finished..."

sleep 15
