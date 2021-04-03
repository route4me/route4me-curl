@ECHO OFF

SET url=https://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET rdirect=0
SET optid=896C4E5466213841BB9AEF3EEF5D7F48

ECHO ON

:: The example refers to the process of adding an order to an optimization by sending HTPP PUT data

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/json" -d "@add_order_to_optimization_data.json" "%url%?api_key=%apikey%&redirect=%rdirect%&optimization_problem_id=%optid%"

timeout /t 30