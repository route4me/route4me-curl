@ECHO OFF

SET url=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111

SET "optimized_callback_url=http://searchpacker.com/r4m_optimization.php"

:: The example refers to the process of creating new optimization by sending HTTP data.

ECHO ON

curl -o create_new_optimization_RESPONSE.json -k -X POST -d "@create_new_optimization_data.json"  "%url%?api_key=%apikey%&lock_last=0&directions=1&route_path_output=Points&travel_mode=Driving&optimize=Distance&algorithm_type=3&route_time=21600&route_max_duration=128000&metric=4&vehicle_capacity=160&vehicle_max_distance_mi=1000000&optimized_callback_url=%optimized_callback_url%" 

::curl -o text1.txt -k -X GET "%optimized_callback_url%?api_key=%apikey%"

timeout /t 30