#!/bin/bash

url=https://api.route4me.com/api.v4/note_custom_types.php

apikey=11111111111111111111111111111111

# The example refers to the process of removing custom note types from a user's account by sending HTTP parameters.

curl -o delete_note_custom_type_RESPONSE.json -g -k -X DELETE -d "@delete_note_custom_type_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
