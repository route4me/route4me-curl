@ECHO OFF

SET url=https://api.route4me.com/api.v4/optimization_problem.php
SET apikey=1d479a8464677d9fc054eb7d00b046d2
SET optprobid=26C09196B2A9DE04A5673A0C7FA03CB9

ECHO ON
curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%&optimization_problem_id=%optprobid%" 

timeout /t 30