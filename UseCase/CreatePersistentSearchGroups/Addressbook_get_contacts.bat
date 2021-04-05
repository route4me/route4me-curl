ECHO OFF

SET url=https://api.route4me.com/api.v4/address_book.php

SET apikey=11111111111111111111111111111111

ECHO ON

curl -o file1.txt -X -k GET "%url%?api_key=%apikey%&offset=0&limit=100"

timeout /t 30
