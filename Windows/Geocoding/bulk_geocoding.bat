@ECHO OFF
SET url=http://api.route4me.com/actions/upload/json-geocode.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: This task requires clarification- it refuses to work because API key has exceeded its maximum number of requests

curl -o file1.txt -g -X POST -d '@bulk_geocoding_data.json' "%URL%?api_key=%apikey%" 

timeout /t 30