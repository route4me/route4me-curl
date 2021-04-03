@ECHO OFF
:: Single Depot, Multiple Driver, No Time Window

::See video tutorial here: http://support.route4me.com/route-planning-help.php?id=manual0:tutorial2:chapter2:subchapter1

SET URL=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET route_path_output=Points

ECHO ON

curl -o file1.txt -g -X POST -k -d "@single_depot_multi_driver_no_tw_data.json" "%URL%?api_key=%apikey%&route_path_output=%route_path_output%" 

timeout /t 30