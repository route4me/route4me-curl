ECHO OFF

SET url=https://www.route4me.com/api.v4/address_book_group.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of creating address book group.

ECHO ON

curl -o create_addressbook_group_RESPONSE.json -k -d "@create_addressbook_group_data.json" -X POST -H "Content-Type: application/json" "%url%?api_key=%apikey%"

timeout /t 30