@ECHO OFF

SET url=https://www.route4me.com/actions/route/share_route.php
SET apikey=11111111111111111111111111111111
SET routeid=8EC394C7D9639F694314D87ADAD1EDC8
SET emails=client1@gmail.com,client2@yahoo.com,client3@aol.com
SET response_format=json

ECHO ON

:: Example refers to the process of shearing a route by email

curl -o file1.txt -g -X POST -k -H "Content-Type: multipart/form-data;" -F "recipient_email=%emails%" "%url%?api_key=%apikey%&route_id=%routeid%&response_format=%response_format%" 

timeout /t 30