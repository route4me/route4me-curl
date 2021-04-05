@ECHO OFF

SET url=https://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET optprobid=7ED2A9A74FC09DD9E4AE178B966DA167

:: The example refers to the process of getting a single optimization problem.

ECHO ON
curl -o file1.txt -g -k -X GET "%url%?api_key=%apikey%&optimization_problem_id=%optprobid%" 

timeout /t 30