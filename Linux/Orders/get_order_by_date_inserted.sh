#!/bin/bash

url=http://www.route4me.com/api.v4/order.php
apikey="33383266363136302D623934312D3131"
sdate="2016-06-15"

# The example demonstrates the process of retirieving orders inserted on a specified date sent with HTTP GET

curl -o file1.txt -g -X GET "$url?api_key=$apikey&day_added_YYMMDD=$sdate"

echo "Finished..."

sleep 15
