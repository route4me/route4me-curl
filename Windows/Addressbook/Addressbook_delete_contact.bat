@ECHO OFF

SET url=https://api.route4me.com/api.v4/address_book.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of removing a location from an address book belonged to an user.

ECHO ON

curl -o file1.txt -g -k -X DELETE -H "Content-Type: application/json" -d "@address_data_for_delete.json" "%url%?api_key=%apikey%"

timeout /t 30