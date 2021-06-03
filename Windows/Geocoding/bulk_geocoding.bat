@ECHO OFF
SET url=http://api.route4me.com/actions/upload/json-geocode.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: This endpoint is obsolete

curl -o file1.txt -g -X POST -d '@bulk_geocoding_data.json' "%URL%?api_key=%apikey%" 

timeout /t 30