@ECHO OFF

SET url=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET optprobid=C2831D56008E8F6EA5B8FFDEA11883AF

ECHO ON
curl -o file1.txt -g -X PUT -k "%url%?api_key=%apikey%&optimization_problem_id=%optprobid%&reoptimize=1" 

timeout /t 30