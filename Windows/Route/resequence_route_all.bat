@ECHO OFF
SET url=http://www.route4me.com
SET apikey=11111111111111111111111111111111
SET routeid=5C15E83A4BE005BCD1537955D28D51D7

ECHO ON

curl -o file1.txt -g -X GET "%url%//api.v3/route/reoptimize_2.php?api_key=%apikey%&route_id=%routeid%&disable_optimization=0&optimize=Distance;"

timeout /t 30