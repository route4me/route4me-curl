@ECHO OFF

SET url=http://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET optprobid=F685A2CC2466AFC4D2D04086897C01AD

:: The example refers to the process of getting a single optimization problem.

ECHO ON
curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%&optimization_problem_id=%optprobid%" 

timeout /t 30