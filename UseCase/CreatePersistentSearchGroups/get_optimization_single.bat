@ECHO OFF

SET url=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET optprobid=C6951ECD8AADB1B0DB2F001C3436E8BA

ECHO ON
curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%&optimization_problem_id=%optprobid%" 

timeout /t 30