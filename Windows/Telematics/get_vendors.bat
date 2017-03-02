@ECHO OFF

SET url=https://telematics.route4me.com/api/vendors.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting the telematics vendors.

ECHO ON
curl -o file1.txt -g -k -X GET "%url%?api_key=%apikey%"

timeout /t 30