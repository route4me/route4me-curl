@ECHO OFF

SET url=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET optprobid=C1B821B94C5FFCE77001B3B2AA1B399C

:: The example refers to the process of reoptimization an existing optimization.

ECHO ON
curl -o file1.txt -g -X PUT -k -d "@reoptimization_data.json" "%url%?api_key=%apikey%&optimization_problem_id=%optprobid%&reoptimize=1" 

timeout /t 30