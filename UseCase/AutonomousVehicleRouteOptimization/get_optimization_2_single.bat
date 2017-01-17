@ECHO OFF

SET url=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=BD48828717021141485A701453273458
SET optprobid=95886E7CDF875EE56FDF80552A9FFBB8

ECHO ON
curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%&optimization_problem_id=%optprobid%" 

timeout /t 30