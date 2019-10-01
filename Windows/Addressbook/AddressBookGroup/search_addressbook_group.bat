ECHO OFF

SET url=https://api.route4me.com/api.v4/address_book.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of searching for the locations by sending JSON payload.

ECHO ON

curl -o search_addressbook_group_RESPONSE.json -k -d "@search_addressbook_group_data.json" -XPOST -H "Content-Type: application/json" "%url%?api_key=%apikey%"

timeout /t 30