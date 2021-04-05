ECHO OFF

SET url=https://api.route4me.com/api.v4/address_book_group.php
SET apikey=11111111111111111111111111111111
SET group_id=35DC986E1AECDD71C9389641675024EE

:: The example refers to the process of getting an adddress group by group ID.

ECHO ON

curl -o get_addressbook_group_RESPONSE.json -k -X GET "%url%?api_key=%apikey%&group_id=%group_id%"

timeout /t 30