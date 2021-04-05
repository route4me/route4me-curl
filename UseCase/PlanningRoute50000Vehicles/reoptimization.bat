@ECHO OFF
SET url=https://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET optprobid=8652891CAFBCA821493432A9CB63573C

ECHO ON
curl -o file1.txt -g -X PUT -k -d "@reoptimization_data.json" "%url%?api_key=%apikey%&optimization_problem_id=%optprobid%&reoptimize=1" 

timeout /t 30