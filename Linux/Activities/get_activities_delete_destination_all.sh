#!/bin/bash

# You should insert real test data and your API key for accurate testing

# This example requires clarification. The response contains only one delete activity, not all

url=https://www.route4me.com/api/get_activities.php
apikey=11111111111111111111111111111111
act_type=delete-destination

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey&activity_type=$act_type"

echo "finished..."

sleep 15
