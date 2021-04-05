@ECHO OFF
:: Multiple Driver Multiple TimeWindows 29 Stops

::See video tutorial here: http://support.route4me.com/route-planning-help.php?id=manual0:tutorial2:chapter1:subchapter2

SET URL=https://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111

ECHO ON

curl -o overlapping_time_windows_right_RESPONSE.json -g -X POST -k -d "@overlapping_time_windows_data_RIGHT.json" "%URL%?api_key=%apikey%" 

timeout /t 30