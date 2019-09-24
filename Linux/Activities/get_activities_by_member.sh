#!/bin/bash

# You should insert real test data and your API key for accurate testing

# Example refers to the process of getting all activities by a member

url=https://api.route4me.com/api/get_activities.php
apikey=11111111111111111111111111111111
member_id=888888

curl -o get_activities_by_member_RESPONSE.json -g -k -X GET "$url?api_key=$apikey&member_id=$member_id"

echo "Finished..."

sleep 15
