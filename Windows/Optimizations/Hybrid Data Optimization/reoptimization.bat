@ECHO OFF

SET url=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET optprobid=C86B7F391E6A08187FEA0D623B48DA32

:: The example refers to the process of reoptimization an existing optimization.

ECHO ON
curl -o file1.txt -g -X PUT -k "%url%?api_key=%apikey%&optimization_problem_id=%optprobid%&reoptimize=1" 

timeout /t 30