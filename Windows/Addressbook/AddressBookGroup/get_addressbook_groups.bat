ECHO OFF
SET url=https://api.route4me.com/api.v4/address_book_group.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting limited number of the address book groups.

ECHO ON

curl -o get_addressbook_groups_RESPONSE.json -k -X GET "%url%?api_key=%apikey%&offset=0&limit=10"

timeout /t 30