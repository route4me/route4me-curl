@ECHO OFF

SET url=https://api.route4me.com/actions/route/share_route.php
SET apikey=11111111111111111111111111111111
SET routeid=3A2DD89E6E1A044B2098AD1313E3138C

ECHO ON

:: Example refers to the process of shearing a route by email

curl -o file1.txt -g -X POST -k -H "Content-Type: multipart/form-data;" -F "recipient_email=oooooo@gmail.com" "%url%?api_key=%apikey%&route_id=%routeid%&response_format=json" 

timeout /t 30