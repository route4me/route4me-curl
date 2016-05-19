#!/bin/bash

url=https://www.route4me.com/api.v4/avoidance.php
apikey=11111111111111111111111111111111
terid=03C0330958139E3EDF61EFFCEFBBD64E

# Needs clarification - doesn't return anything, altough in case of territory.php it works fine

curl -o file1.txt -g -k -X POST -d '@create_rect_zone_data.json' "$url?api_key=$apikey&territory_id=$terid"

echo "Finished..."

sleep 15
