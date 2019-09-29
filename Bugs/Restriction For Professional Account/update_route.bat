@ECHO OFF

SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111
SET optprobid=1EE742258D4591C5442F5C3B6B6C2FF0

:: The example refers to the process of reoptimization an existing optimization.

ECHO ON

curl -o file1.txt -g -X PUT -k -d "@single_driver_round_trip_update_data.json" "%URL%/api.v4/optimization_problem.php?api_key=%apikey%&optimization_problem_id=%optprobid%&reoptimize=1" 

timeout /t 30