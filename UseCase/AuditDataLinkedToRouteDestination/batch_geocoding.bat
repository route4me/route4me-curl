@ECHO OFF
SET url=https://www.route4me.com/api/geocoder.php
SET apikey=11111111111111111111111111111111
SET format=json
SET "addrs=2705 N River Rd, Stow, OH 44224"

ECHO ON

:: You can put in the parameter 'addresses' more than one addresses divided by '||', but only one address will be processed, rest addresses will be ignored.

curl -o file1.txt -k -g -X POST "%URL%?api_key=%apikey%&format=%format%&addresses=%addrs%" 

timeout /t 30