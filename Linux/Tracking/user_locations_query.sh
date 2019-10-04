#!/bin/bash

url=https://api.route4me.com/api/track/view_user_locations.php
apikey=11111111111111111111111111111111
query=dprogman@yahoo.com

# Example refers to the process of getting user locations by query.
# Note: you can query by member_id, user email, member_type etc.

curl -o user_locations_query_RESPONSE.json -g -k -X GET "$url?api_key=$apikey&query=$query" 

echo "Finished..."

sleep 15
