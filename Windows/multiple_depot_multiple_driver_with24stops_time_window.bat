@ECHO OFF
:: Multiple Depot, Multiple Driver with 24 Stops, Time Window
:: Please put real value in route_date

::See video tutorial here: http://support.route4me.com/route-planning-help.php?id=manual0:tutorial2:chapter2:subchapter2

SET URL=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111

ECHO ON

curl -o file1.txt -g -X POST -k -d "@multiple_depot_multiple_driver_with24stops_time_window_data.json" "%URL%?api_key=%apikey%" 

timeout /t 30