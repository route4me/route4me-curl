@ECHO OFF

SET url=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=bd48828717021141485a701453273458
SET optprobid=EBDAC7A2B753E9F8E3B725B4C96B3C4C

ECHO ON
curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%&optimization_problem_id=%optprobid%" 

timeout /t 30