@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111
SET optprobid=123974C887534E84B6114F18A65847E3
SET routedestinationid=154456307

ECHO ON

curl -o file1.txt -g -X DELETE -k "%url%/api.v4/address.php?api_key=%apikey%&optimization_problem_id=%optprobid%&route_destination_id=%routedestinationid%"

timeout /t 30