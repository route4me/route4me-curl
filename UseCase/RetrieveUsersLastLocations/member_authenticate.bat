@ECHO OFF

SET url=https://www.route4me.com/actions/authenticate.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: Example refers to the process of autentication into the Route4Me's offciial web application

curl -o file1.txt -k -g -X POST -H "Content-Type: multipart/form-data;" -F "strEmail=dan@novapulsar.com" -F "strPassword=123456" -F "format=json" "%url%?api_key=%apikey%" 

timeout /t 30