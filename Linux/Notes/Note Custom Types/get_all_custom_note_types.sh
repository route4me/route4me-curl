#!/bin/bash

url=https://api.route4me.com/api.v4/note_custom_types.php

apikey=11111111111111111111111111111111

# The example refers to the process of getting all the custom note types.

curl -o get_all_custom_note_types_RESPONSE.json -g -k -X GET "$url?api_key=$apikey"

echo "Finished..."

sleep 15
