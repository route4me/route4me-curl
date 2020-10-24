#!/bin/bash

# The example refers to the process of creating an optimization using separate section of the depots in the route parameters.

url=https://www.route4me.com/api.v4/optimization_problem.php
apikey=11111111111111111111111111111111

curl -o multiple_separate_depots_RESPONSE.json -g -X POST -k -d "@multiple_separate_depots_data.json" "$url?api_key=$apikey" 

echo "Finished..."

sleep 15
