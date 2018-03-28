#!/bin/bash

url=https://api.route4me.com/actions/addRouteNotes.php

apikey=11111111111111111111111111111111
routeid=D1DF6BAF991E3CDC00134C28D27AEC12
address_id=289863166
format=json
dev_lat=-37.8207115
dev_lng=144.9581931

# The example refers to the process of adding a note custom type to a user's account by sending HTTP parameters.

curl -o add_custom_note_to_route_data_RESPONSE.json -g -k -X POST -d  "custom_note_type[11]=slippery&custom_note_type[10]=Backdoor&strUpdateType=dropoff&strNoteContents=test1111" "$url?api_key=$apikey&route_id=$routeid&address_id=$address_id&dev_lat=$dev_lat&dev_lng=$dev_lng&format=$format"

echo "Finished..."

sleep 15
