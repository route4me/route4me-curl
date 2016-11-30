@ECHO OFF

SET url=https://www.route4me.com/actions/webinar_register.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: The example refers to the process of registering on the Route4Me webinar.

curl -o file1.txt -g -k -X POST -d '@webinar_registration_data.json' "%URL%?api_key=%apikey%" 

timeout /t 30