@ECHO OFF

SET url=https://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting the limited number of the optimization problems.

ECHO ON
curl -o file1.txt -g -X GET -k "%url%?state=1,2,3&api_key=%apikey%&limit=10&offset=0" 

timeout /t 30