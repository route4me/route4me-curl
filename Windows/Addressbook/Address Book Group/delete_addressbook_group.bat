ECHO OFF

SET url=https://api.route4me.com/api.v4/address_book_group.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of removing a group from an address book belonged to an user.

ECHO ON

curl -o delete_addressbook_group_RESPONSE.json -k -X DELETE -d "@delete_addressbook_group_data.json" "%url%?api_key=%apikey%"

timeout /t 30