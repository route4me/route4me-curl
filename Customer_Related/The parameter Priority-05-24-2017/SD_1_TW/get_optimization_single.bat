@ECHO OFF

SET url=https://api.route4me.com/api.v4/optimization_problem.php

SET apikey=11111111111111111111111111111111
SET optprobid=B9C433A42A2A75B0D592DFD17604FB3F

:: The example refers to the process of getting a single optimization problem.

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?api_key=%apikey%&optimization_problem_id=%optprobid%" 

timeout /t 30
