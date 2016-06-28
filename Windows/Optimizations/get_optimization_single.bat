@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111
SET optprobid=8034E6A76E8518D2F9E49171E6A89896

ECHO ON
curl -o file1.txt -g -X GET -k "%URL%/api.v4/optimization_problem.php?api_key=%apikey%&optimization_problem_id=%optprobid%" 

timeout /t 30