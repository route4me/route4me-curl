#!/bin/bash

# Example refers to the process of getting the ebooks.

host=https://blog.route4me.com/wp-json/wp/v2/ebooks

apikey=11111111111111111111111111111111
page=1
per_page=20
context=embed

curl -o "get_ebooks_embed_RESPONSE.json" -L -g -k -X GET "$host?api_key=$apikey&page=$page&per_page=$per_page&context=$context"

echo "Finished..."

sleep 15
