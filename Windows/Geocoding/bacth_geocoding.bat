@ECHO OFF
SET url=http://www.route4me.com/api/geocoder.php
SET apikey=11111111111111111111111111111111
SET format=xml
SET addrs="Los20%Angeles20%International20%Airport,20%CA||Boston,20%MA"

ECHO ON

:: This task requires clarification- it refuses to work because API key has exceeded its maximum number of requests
curl -o file1.txt -g -X POST -d '@batch_geocoding_data.json' "%URL%?api_key=%apikey%&format=%format%&addresses=%addrs%" 

timeout /t 30