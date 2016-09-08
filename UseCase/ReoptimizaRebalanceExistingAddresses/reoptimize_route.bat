@ECHO OFF

SET url=https://www.route4me.com/api.v3/route/reoptimize_2.php
SET apikey=11111111111111111111111111111111
SET routeid=99C428A9106C118C3F908B445C7DEB76
SET opt_type=Distance
SET disable_optimization=0

ECHO ON

curl -o file1.txt -k -g -X GET "%url%?api_key=%apikey%&route_id=%routeid%&disable_optimization=%disable_optimization%&optimize=%opt_type%;"

timeout /t 30
