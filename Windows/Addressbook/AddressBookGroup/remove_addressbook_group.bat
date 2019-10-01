ECHO OFF

SET url=https://api.route4me.com/api.v4/address_book_group.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of removing an address book group from a user's account.

ECHO ON

curl -o remove_addressbook_group_RESPONSE.json -k -d "@remove_addressbook_group_data.json" -X DELETE -H "Content-Type: application/json" "%url%?api_key=%apikey%"

timeout /t 30