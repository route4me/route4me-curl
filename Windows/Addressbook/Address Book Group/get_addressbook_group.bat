ECHO OFF

SET url=https://api.route4me.com/api.v4/address_book_group.php
SET apikey=11111111111111111111111111111111
SET group_id=72E152B327F79CCCCCCCCCCCCCCCCCCC

:: The example refers to the process of getting a group from an address book belonged to an user.

ECHO ON

curl -o get_addressbook_group_RESPONSE.json -k -X GET "%url%?api_key=%apikey%&group_id=%group_id%"

timeout /t 30