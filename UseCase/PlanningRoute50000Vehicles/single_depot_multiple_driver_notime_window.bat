@ECHO OFF
:: Single Depot, Multiple Driver, No Time Window

::See video tutorial here: http://support.route4me.com/route-planning-help.php?id=manual0:tutorial2:chapter2:subchapter1

SET URL=https://api.route4me.com/api.v4/optimization_problem.php
SET apikey=1d479a8464677d9fc054eb7d00b046d2
SET route_path_output=Points

ECHO ON

curl -o file1.txt -g -X POST -k -d "@single_depot_multiple_driver_notime_window_data.json" "%URL%?api_key=%apikey%&route_path_output=%route_path_output%" 

timeout /t 30