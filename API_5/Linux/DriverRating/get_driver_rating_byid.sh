#!/bin/bash

base_url=https://wh.route4me.com/modules/api/v5.0
endpoint=/driver-reviews

rating_id=5555555555555

apikey=11111111111111111111111111111111

# The example refers to the process of getting a driver rating by rating_id.

curl -o get_driver_rating_byid_RESPONSE.json -g -X GET -k "$base_url$endpoint/$rating_id?api_key=$apikey"

echo "Finished..."

sleep 15
