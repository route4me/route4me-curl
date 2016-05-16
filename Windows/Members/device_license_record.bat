@ECHO OFF
SET url=https://www.route4me.com/api/device/verify_device_license.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: Create and Verify Mobile Device License Record
curl -o file1.txt -g -X POST -k -d '@device_license_record_data.json' "%URL%?api_key=%apikey%" 

timeout /t 30