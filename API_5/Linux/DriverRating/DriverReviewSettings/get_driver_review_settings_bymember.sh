#!/bin/bash

base_url=https://wh.route4me.com/modules/api/v5.0
endpoint=/driver-reviews/settings/get-by-member

apikey=11111111111111111111111111111111

# The example refers to the process of getting the driver review settings by authenticated member.

curl -o get_driver_review_settings_bymember_RESPONSE.json -g -X GET -k "$base_url$endpoint?api_key=$apikey"

echo "Finished..."

sleep 15
