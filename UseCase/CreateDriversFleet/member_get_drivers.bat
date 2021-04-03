@ECHO OFF
SET url=https://www.route4me.com/api/drivers/view_drivers.php
SET apikey=11111111111111111111111111111111

ECHO ON

curl -o file1.txt -g -X GET -k "%url%?api_key=%apikey%"

timeout /t 30