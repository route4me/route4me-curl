@ECHO OFF

SET url=https://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111

SET "optimized_callback_url=https://requestb.in/1o6cgge1"

:: The example refers to the process of creating new optimization by sending HTTP data.

ECHO ON

curl -o create_new_optimization_RESPONSE.json -k -X POST -d "@create_new_optimization_data.json" "%url%?api_key=%apikey%&optimized_callback_url=%optimized_callback_url%"

::curl -o text1.txt -k -X GET "%optimized_callback_url%?api_key=%apikey%"

timeout /t 30