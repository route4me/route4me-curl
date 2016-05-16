@ECHO OFF
SET url=http://www.route4me.com
SET apikey=11111111111111111111111111111111
SET opi=31AC533ECF9429CDECCECC530745F7BD

ECHO ON

curl -o file1.txt -g -X POST -H "Content-Type: application/json" -d "@new_route_data.json" "%url%/api.v4/optimization_problem.php?api_key=%apikey%&optimization_problem_id=%opi%"

timeout /t 30