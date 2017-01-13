@ECHO OFF

::See video tutorial here: http://support.route4me.com/route-planning-help.php?id=manual0:tutorial2:chapter1:subchapter1

SET URL=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=bd48828717021141485a701453273458

ECHO ON

curl -o file1.txt -g -X POST -k -d "@single_driver_2_trip_data.json" "%url%?api_key=%apikey%" 

timeout /t 30