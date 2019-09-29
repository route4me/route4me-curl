ECHO OFF
SET url=https://api.route4me.com/api.v4/address_book.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting routed contacts from an address book.
:: The parameter <display> has 3 possible values: [all, routed, unrouted]

SET display="routed"

ECHO ON

curl -o file1.txt -k -X GET "%url%?api_key=%apikey%&display=%display%"

timeout /t 30