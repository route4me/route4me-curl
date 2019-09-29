#!/bin/bash

url=http://api.route4me.com/api.v4/order.php
apikey="11111111111111111111111111111111"
sdate="2016-06-15"

# The example refers to the process of retrieving orders inserted on a specified date by sending HTTP GET data

curl -o file1.txt -g -X GET "$url?api_key=$apikey&day_added_YYMMDD=$sdate"

echo "Finished..."

sleep 15
