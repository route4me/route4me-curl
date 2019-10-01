ECHO OFF

SET url=https://api.route4me.com/api/address_book/get_search_group_addresses.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting the address book locations by a geoup ID.

ECHO ON

curl -o get_addressbook_by_group_RESPONSE.json -k -XPOST -H "Content-Type: application/json" -d "@get_addressbook_by_group_data.json" "%url%?api_key=%apikey%"

timeout /t 30