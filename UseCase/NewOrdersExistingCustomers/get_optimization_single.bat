@ECHO OFF

SET url=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=1D479A8464677D9FC054EB7D00B046D2
SET optprobid=49D8041BC3EDBA422B68E49F13768664

ECHO ON
curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%&optimization_problem_id=%optprobid%" 

timeout /t 30