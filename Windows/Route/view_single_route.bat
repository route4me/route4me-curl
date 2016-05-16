@ECHO OFF
SET url=http://www.route4me.com
SET apikey=11111111111111111111111111111111
SET routeid=3A2DD89E6E1A044B2098AD1313E3138C

ECHO ON

curl -o file1.txt -g -X GET "%URL%/api.v4/route.php?route_id=%routeid%&api_key=%apikey%" 

timeout /t 30