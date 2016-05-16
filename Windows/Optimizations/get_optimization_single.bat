@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111
SET optprobid=07372F2CF3814EC6DFFAFE92E22771AA

ECHO ON
curl -o file1.txt -g -X GET -k "%URL%/api.v4/optimization_problem.php?api_key=%apikey%&optimization_problem_id=%optprobid%" 

timeout /t 30