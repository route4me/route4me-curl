@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111

ECHO ON

curl -o file1.txt -g -X GET -k "%URL%/api/drivers/view_drivers.php?api_key=%apikey%"

timeout /t 30