@ECHO OFF

SET url=http://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET rdirect=0
SET optid=8034E6A76E8518D2F9E49171E6A89896

ECHO ON

:: The example refers to the process of adding an order to an optimization by sending HTPP PUT data

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@add_order_to_route_data.json" "%url%?api_key=%apikey%&redirect=%rdirect%&optimization_problem_id=%optid%"

timeout /t 30