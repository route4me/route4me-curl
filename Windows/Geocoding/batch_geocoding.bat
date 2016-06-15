@ECHO OFF
SET url=http://www.route4me.com/api/geocoder.php
SET apikey=11111111111111111111111111111111
SET format=xml
SET addrs="Los20%Angeles20%International20%Airport,20%CA"

ECHO ON

:: You can put in the parameter 'addresses' more than one addresses divided by '||', but only one address will be processed, rest addresses will be ignored.

curl -o file1.txt -g -X POST "%URL%?api_key=%apikey%&format=%format%&addresses=%addrs%" 

timeout /t 30