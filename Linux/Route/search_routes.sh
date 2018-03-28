#!/bin/bash

url=https://api.route4me.com/api.v4/route.php
apikey=11111111111111111111111111111111
query=Tbilisi

# The example refers to the process of searching for the specified text throughout all routes belonging to the user's account.

curl -o file1.txt -g -k -X GET "$url?query=$query&api_key=$apikey" 

echo "Finished.."

