@ECHO OFF

SET url=https://api.route4me.com/api.v4/optimization_problem.php

SET apikey=11111111111111111111111111111111
SET optprobid=06BF0EFE40FCCC24957686DFE2DE353A

ECHO ON
curl -o file1.txt -g -k -X GET "%url%?api_key=%apikey%&optimization_problem_id=%optprobid%" 

timeout /t 30