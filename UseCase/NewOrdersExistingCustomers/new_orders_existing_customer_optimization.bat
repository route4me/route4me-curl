@ECHO OFF
:: Single Depot, Multiple Driver, No Time Window
:: Please put real value in route_date

::See video tutorial here: http://support.route4me.com/route-planning-help.php?id=manual0:tutorial2:chapter2:subchapter1

SET URL=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=1D479A8464677D9FC054EB7D00B046D2
SET route_path_output=Points

ECHO ON

curl -o file1.txt -g -X POST -k -d "@new_orders_existing_customer_optimization_data.json" "%URL%?api_key=%apikey%&route_path_output=%route_path_output%" 

timeout /t 30