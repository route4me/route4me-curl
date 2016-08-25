ECHO OFF
SET url=https://www.route4me.com/api.v4/address_book.php
SET apikey=11111111111111111111111111111111

:: Get contacts by listed ids 
SET addr_id=8762599,8762600,8762601,8762629,8762630,8762631

ECHO ON

curl -o file1.txt -k -X GET "%url%?api_key=%apikey%&address_id=%addr_id%"

timeout /t 30