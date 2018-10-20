#!/bin/bash

# Please, put real value in the parameters api_key

url=https://oa.route4me.com/api/v1/feed/event/
api_key=1111111111111111111111111111111111111111111111111111111111111111
event_id=493CD106ED544D71BCEBE5247C8FC8B1

# The example refers to the process of getting an activity feed event by event_id

curl -o Feed_activity_event_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "$url$event_id?api_key=$api_key"

echo "Finished..."

sleep 15
