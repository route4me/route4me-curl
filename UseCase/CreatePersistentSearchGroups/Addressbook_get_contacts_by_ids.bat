ECHO OFF
SET url=https://api.route4me.com/api.v4/address_book.php
SET apikey=11111111111111111111111111111111

:: Get contacts by listed ids 
SET addr_id=4560331,4560087,4560098,4564330,4564346

ECHO ON

curl -o file1.txt -k -X GET "%url%?api_key=%apikey%&address_id=%addr_id%"

timeout /t 30