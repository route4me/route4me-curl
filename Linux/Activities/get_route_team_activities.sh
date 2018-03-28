#!/bin/bash

# You should insert real test data and your API key for accurate testing

url=https://api.route4me.com/api/get_activities.php
apikey=11111111111111111111111111111111
route_id=06B655F27E0D6A74BD37F6F9758E4D2E
team=true

# Example refers to the process of getting team activities on a route

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey&route_id=$route_id&team=$team&"

echo "Finished..."

sleep 15
