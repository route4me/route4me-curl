@ECHO OFF

SET url=http://www.route4me.com/api/geocoder.php
SET apikey=11111111111111111111111111111111
SET format=xml
SET addrs="41.145240783691,-81.410247802734"

ECHO ON

:: You can put in the parameter 'addresses' more than one location divided by '||', but only one location will be processed, rest locations will be ignored.

curl -o file1.txt -g -X POST "%URL%?api_key=%apikey%&format=%format%&addresses=%addrs%" 

timeout /t 30