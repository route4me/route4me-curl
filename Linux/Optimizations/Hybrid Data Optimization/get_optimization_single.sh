#!/bin/bash

url=https://api.route4me.com/api.v4/optimization_problem.php
apikey=11111111111111111111111111111111

optprobid=08BF12A2FA91E9A97429CD0F8B43365E

# The example refers to the process of getting a single optimization problem.

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey&optimization_problem_id=$optprobid" 

echo "Finished..."

sleep 15
