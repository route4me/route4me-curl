@ECHO OFF

SET url=https://telematics.route4me.com/api/vendors.php
SET apikey=11111111111111111111111111111111
SET vendor_id=153

:: The example refers to the process of getting a telematics vendor.

ECHO ON
curl -o file1.txt -g -k -X GET "%url%?api_key=%apikey%&vendor_id=%vendor_id%"

timeout /t 30