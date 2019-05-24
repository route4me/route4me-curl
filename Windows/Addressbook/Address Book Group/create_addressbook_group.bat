ECHO OFF

SET url=https://api.route4me.com/api.v4/address_book_group.php
SET apikey=11111111111111111111111111111111
SET "query=BHN only rep"

:: The example refers to the process of creating a group in an address book belonged to an user.

ECHO ON

curl -o create_addressbook_group_RESPONSE.json -k -d "@create_addressbook_group_data.json" -X POST -H "Content-Type: application/json" "%url%?api_key=%apikey%"

timeout /t 30