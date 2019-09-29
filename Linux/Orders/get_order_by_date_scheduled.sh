#!/bin/bash

url=http://api.route4me.com/api.v4/order.php
apikey="33383266363136302D623934312D3131"
sdate="2016-06-16"

# The example refers to the process of retrieving orders scheduled to a specified date by sending HTTP GET data

curl -o file1.txt -g -X GET "$url?api_key=$apikey&scheduled_for_YYMMDD=$sdate"

echo "Finished..."

sleep 15
