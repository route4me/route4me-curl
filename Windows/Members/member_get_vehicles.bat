@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111

ECHO ON

curl -o file1.txt -g -X GET -k "%URL%/api/vehicles/view_vehicles.php?api_key=%apikey%"

timeout /t 30