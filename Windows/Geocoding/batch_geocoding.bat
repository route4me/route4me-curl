@ECHO OFF
SET url=https://www.route4me.com/api/geocoder.php
SET apikey=11111111111111111111111111111111
SET format=json
SET addrs="Los20%Angeles20%International20%Airport,20%CA"

ECHO ON

:: The example refers to the process of the forward geocoding.

curl -o file1.txt -k -g -X POST "%URL%?api_key=%apikey%&format=%format%&addresses=%addrs%" 

timeout /t 30