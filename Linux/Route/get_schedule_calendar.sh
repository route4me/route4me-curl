#!/bin/bash

url=https://api.route4me.com/api/schedule_calendar_data.php
apikey=11111111111111111111111111111111

date_from_string="2020-10-20"
date_to_string="2020-11-20"
timezone_offset_minutes=-240
orders=1
ab=1
routes_count=1

# The example refers to the process of getting the schedule calendar.
# The example requires an API key with the enterprise subscription.

curl -o get_schedule_calendar_RESPONSE.json -g -k -X GET "$url?api_key=$apikey&date_from_string=$date_from_string&date_to_string=$date_to_string&timezone_offset_minutes=$timezone_offset_minutes&orders=$orders&ab=$ab&routes_count=$routes_count"

echo "Finished..."

sleep 15
