#!/bin/bash

url=https://api.route4me.com/api/track/view_user_locations.php
apikey=11111111111111111111111111111111

# Example refers to the process of getting all user locations.

curl -o user_locations_get_all_RESPONSE.json -g -k -X GET "$url?api_key=$apikey" 

echo "Finished..."

sleep 15
