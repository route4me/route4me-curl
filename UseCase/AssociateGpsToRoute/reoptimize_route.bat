@ECHO OFF

SET url=https://www.route4me.com/api.v3/route/reoptimize_2.php
SET apikey=11111111111111111111111111111111
SET routeid=422E488B1ABD5C37C23583052D3EFD73
SET opt_type=Distance
SET disable_optimization=0

ECHO ON

curl -o file1.txt -k -g -X GET "%url%?api_key=%apikey%&route_id=%routeid%&disable_optimization=%disable_optimization%&optimize=%opt_type%;"

timeout /t 30
