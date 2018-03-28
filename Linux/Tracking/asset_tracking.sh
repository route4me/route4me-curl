#!/bin/bash

url=https://api.route4me.com/api.v4/status.php
apikey=11111111111111111111111111111111
tracking="Q7G9P1L9"

# The example refers to the process of an asset tracking by sending HTTP parameters.

curl -o file1.txt -g -X GET -k "$url?api_key=$apikey&tracking=$tracking"

echo "Finished..."

sleep 15
