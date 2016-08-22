ECHO OFF
SET url=https://www.route4me.com/api/address_book/add_contact.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: Needs clarification - requires member_id,  altough ir is sent

curl -o file1.txt -k -X POST -d "@new_address_data.json" "%url%?api_key=%apikey%"

timeout /t 30