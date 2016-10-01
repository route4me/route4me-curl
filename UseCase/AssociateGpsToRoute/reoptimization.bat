@ECHO OFF

SET url=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET optprobid=E454F67078391C9A46D9C40CD022D450

ECHO ON
curl -o file1.txt -g -X PUT -k "%url%?api_key=%apikey%&optimization_problem_id=%optprobid%&reoptimize=1" 

timeout /t 30