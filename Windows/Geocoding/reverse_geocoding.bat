@ECHO OFF

SET url=http://api.route4me.com/api/geocoder.php
SET apikey=11111111111111111111111111111111
SET format=xml
SET addrs="42.35863,-71.05670"

ECHO ON

:: The example refers to the process of reverse geocoding.

curl -o file1.txt -g -X POST "%url%?api_key=%apikey%&format=%format%&addresses=%addrs%" 

timeout /t 30