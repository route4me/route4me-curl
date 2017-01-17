@ECHO OFF

SET url=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET optprobid=CB2A7623469D421CCD08CC8F460BA977

ECHO ON
curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%&optimization_problem_id=%optprobid%" 

timeout /t 30