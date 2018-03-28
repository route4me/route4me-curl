#!/bin/bash

url=https://api.route4me.com/api.v4/optimization_problem.php
apikey=11111111111111111111111111111111
optprobid=DE62B03510AB5A6A876093F30F6C7BF5
redirect=0

# Example refers to the process of removing of the optimization problems

curl -o file1.txt -g -k -X DELETE -d "@delete_optimization_data.json" "$url?api_key=$apikey&redirect=$redirect" 

echo "Finished..."

sleep 15

