@ECHO OFF

setlocal enableDelayedExpansion

SET url=https://www.route4me.com/api/geocoder.php
SET apikey=11111111111111111111111111111111
SET format=json
SET "address=100 Pier 4 Boulevard, Boston, MA 02210, USA"

::SET addrs="Los20%Angeles20%International20%Airport,20%CA"

SET "address=!address: =%%20!"

ECHO ON

:: The example refers to the process of the forward geocoding.

curl -o file1.txt -k -g -X POST "%URL%?api_key=%apikey%&format=%format%&addresses=%address%" 

timeout /t 30