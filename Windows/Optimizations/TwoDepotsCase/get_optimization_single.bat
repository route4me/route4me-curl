@ECHO OFF

SET url=http://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET optprobid=B324902AD88C4ECDED213460CF0915C0

:: The example refers to the process of getting a single optimization problem.

ECHO ON
curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%&optimization_problem_id=%optprobid%" 

timeout /t 30