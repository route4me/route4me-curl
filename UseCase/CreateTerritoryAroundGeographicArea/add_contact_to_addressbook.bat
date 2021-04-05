ECHO OFF
SET url=https://api.route4me.com/api.v4/address_book.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: Needs clarification - requires member_id,  altough ir is sent

curl -o file1.txt -k -X POST -d "@add_contact_to_addressbook_data.json" "%url%?api_key=%apikey%&member_id=1"

timeout /t 30