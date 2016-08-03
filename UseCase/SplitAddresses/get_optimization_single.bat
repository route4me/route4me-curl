@ECHO OFF

SET url=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET optprobid=0502D86404C439681E9499D80A2F180F

ECHO ON
curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%&optimization_problem_id=%optprobid%" 

timeout /t 30