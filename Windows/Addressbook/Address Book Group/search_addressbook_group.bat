ECHO OFF

SET url=https://api.route4me.com/api.v4/address_book.php
SET apikey=11111111111111111111111111111111
SET offset=0
SET limit=20

:: The example refers to the process of searching for the groups in an address book belonged to an user.

ECHO ON

curl -o search_addressbook_group_RESPONSE.json -k -d "@search_addressbook_group_data.json" -X POST -H "Content-Type: application/json" "%url%?api_key=%apikey%&limit=%limit%&offset=%offset%"

timeout /t 30